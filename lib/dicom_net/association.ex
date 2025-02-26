defmodule DicomNet.Association do
  @moduledoc """
  Defines a DICOM association.

  A DICOM association represents an established network connection
  between two application entities (AEs). The association is the result
  of successfully negotiating user identities, what data will be
  exchanged and how it will be encoded.

  See also:
    * https://dicom.nema.org/dicom/2013/output/chtml/part07/sect_D.3.html
  """

  use GenServer
  require Logger
  alias Dicom.DataSet
  alias Dicom.DataElement
  alias DicomNet.Pdu

  # C-Find specific attributes
  @cfind_success 0x0000
  @cfind_pending 0xFF00

  # Generic attributes
  @dataset_present 0x0001
  @no_dataset_present 0x0101
  @unable_to_process 0xC001

  @verification_sopclassuid "1.2.840.10008.1.1"

  def start(init_args) do
    GenServer.start(__MODULE__, init_args)
  end

  @impl true
  def init(%{socket: socket, handlers: handlers}) do
    # TODO move into function
    initial_state = %{
      handlers: handlers,
      socket: socket,
      state: :waiting_for_association,
      buffer: <<>>,
      received_data: <<>>
    }

    send(self(), :read_data)
    {:ok, initial_state}
  end

  @impl true
  def handle_info(:read_data, %{socket: socket, buffer: buffer} = state) do
    case Pdu.from_data(buffer) do
      {:ok, pdu, remaining_data} ->
        Logger.debug("Received PDU")
        new_state = Map.put(state, :buffer, remaining_data)
        new_state = Map.put(new_state, :socket, socket)
        {new_state, response} = handle_pdu(pdu, new_state)

        if is_binary(response) do
          :gen_tcp.send(socket, response)
        end

        send(self(), :read_data)
        {:noreply, new_state}

      _ ->
        case :gen_tcp.recv(socket, 0) do
          {:error, :closed} ->
            Logger.info("Association closed by other side.")
            {:stop, :normal, state}

          {:ok, packet} ->
            data_updated = buffer <> packet
            new_state = Map.put(state, :buffer, data_updated)
            send(self(), :read_data)
            {:noreply, new_state}
        end
    end
  end

  defp validate_associate_request(
         %{presentation_contexts: presentation_contexts} = associate_request,
         result
       ) do
    accepted_presentation_contexts =
      presentation_contexts
      |> Enum.map(fn {id, pc} -> {id, Map.put(pc, :result, result)} end)
      |> Enum.into(%{})

    %{associate_request | presentation_contexts: accepted_presentation_contexts}
  end

  defp accept_association(state, association_data) do
    new_state =
      state
      |> Map.put(:state, :association_established)
      |> Map.put(:association, association_data)

    response =
      Pdu.new_associate_accept_response_pdu(association_data)
      |> Pdu.serialize()

    {new_state, response}
  end

  defp reject_association(state, association_data, source, reason) do
    new_state =
      state
      |> Map.put(:state, :association_release_request)
      |> Map.put(:association, association_data)

    response =
      Pdu.new_association_reject_response_pdu(source, reason)
      |> Pdu.serialize()

    {new_state, response}
  end

  defp handle_pdu(
         %Pdu{
           type: :associate_request,
           data: associate_request
         },
         %{socket: _socket, state: :waiting_for_association} = state
       ) do

    # If the :association handler is defined 
    # the acceptance/rejection can be handled by
    # the host application.
    {new_state, response} =
      case Keyword.fetch(state.handlers, :association_validator) do
        :error ->
          # If no handler is defined simply allow association.
          Logger.debug("No association handler is defined. Accept association.")
          association_data = validate_associate_request(associate_request, :accept)
          accept_association(state, association_data)

        {:ok, association_handler} ->
          # If a handler is defined it must return
          # :accept or :reject

          Logger.debug("Association handler is defined. Let's pass association_data to it.")

          case association_handler.(associate_request) do
            :accept ->
              Logger.debug("Association accepted by handler.")
              association_data = validate_associate_request(associate_request, :accept)
              accept_association(state, association_data)

            {:reject, source, reason} ->
              Logger.debug("Association rejected by handler.")
              association_data = validate_associate_request(associate_request, :reject)
              reject_association(state, association_data, source, reason)
          end
      end

    {new_state, response}
  end

  defp handle_pdu(
         %Pdu{
           type: :data,
           data: %{
             pdv_flags: :command_last_fragment,
             pdv_transfer_ctx_id: presentation_context_id,
             data: data
           }
         },
         %{state: :association_established} = state
       ) do
    Logger.debug("Received command")

    command_ds = Dicom.BinaryFormat.from_binary(data, endianness: :little, explicit: false)
    asci_de = DataSet.value_for!(command_ds, :AffectedSOPClassUID)
    mid_de = DataSet.value_for!(command_ds, :MessageID)

    case asci_de do
      @verification_sopclassuid ->
        Logger.debug("Command is C-ECHO")
        response_ds =
          Dicom.DataSet.from_keyword_list(
            AffectedSOPClassUID: @verification_sopclassuid,
            CommandField: 0x8030,
            MessageIDBeingRespondedTo: mid_de,
            CommandDataSetType: @no_dataset_present,
            Status: 0
          )

        response =
          Dicom.BinaryFormat.serialize_command_data_set(response_ds)
          |> Pdu.new_data_pdu(presentation_context_id, type: :command_last_fragment)
          |> Pdu.serialize()

        {state, response}

      _ ->
        new_state =
          state
          |> Map.put(:state, :receiving_data)
          |> Map.put(:command, command_ds)

        {new_state, :no_response}
    end
  end

  defp handle_pdu(
         %Pdu{type: :data, data: %{pdv_flags: :data_more_fragments, data: data}},
         %{state: :receiving_data} = state
       ) do
    Logger.debug("Received data fragment")

    data = Map.get(state, :received_data, <<>>) <> data

    new_state =
      state
      |> Map.put(:received_data, data)

    {new_state, :no_response}
  end

  defp handle_pdu(
         %Pdu{
           type: :data,
           data: %{
             pdv_flags: :data_last_fragment,
             pdv_transfer_ctx_id: presentation_context_id,
             data: data
           }
         },
         %{
           state: :receiving_data,
           received_data: received_data,
           association: %{presentation_contexts: presentation_contexts},
           command: command,
           socket: socket
         } = state
       ) do
    Logger.debug("Received all data fragments")

    data = received_data <> data

    %{syntaxes: syntaxes} = Map.get(presentation_contexts, presentation_context_id)
    %{uid: ts_uid} = syntaxes |> Enum.find(fn el -> Map.get(el, :syntax_type) == :transfer end)
    %{name: _ts_name, options: ts_options} = Dicom.UidRegistry.get_transfer_syntax(ts_uid)

    ds = Dicom.BinaryFormat.from_binary(data, ts_options)
    command_code = DataSet.value_for!(command, :CommandField)

    response =
      case command_code do
        0x01 ->
          Logger.debug("Start handling C-Store")

          case Keyword.fetch(state.handlers, :cstore) do
            :error ->
              Logger.debug("No C-Store function defined. Returning Failed: Unable to process.")
              # Returns Failed Unable to Process when no C-Store handler function is defined.
              asci_de = DataSet.fetch!(command, :AffectedSOPClassUID)
              mid_de = DataSet.fetch!(command, :MessageID)
              # TODO: replace cfind_response_tail with a proper C-Store response.
              response_ds = cfind_response_tail(asci_de, mid_de, @unable_to_process)

              Dicom.BinaryFormat.serialize_command_data_set(response_ds)
              |> Pdu.new_data_pdu(presentation_context_id, type: :command_last_fragment)
              |> Pdu.serialize()

            {:ok, cstore_handler} ->
              response_ds = handle_cstore(command, cstore_handler, ds)

              Dicom.BinaryFormat.serialize_command_data_set(response_ds)
              |> Pdu.new_data_pdu(presentation_context_id, type: :command_last_fragment)
              |> Pdu.serialize()
          end

        0x20 ->
          Logger.debug("Start handling C-Find")

          case Keyword.fetch(state.handlers, :cfind) do
            :error ->
              Logger.debug("No C-Find handler defined. Returning Failed: Unable to process.")
              # Returns Failed Unable to Process when no C-Findhandler function is defined.
              asci_de = DataSet.fetch!(command, :AffectedSOPClassUID)
              mid_de = DataSet.fetch!(command, :MessageID)
              response_ds = cfind_response_tail(asci_de, mid_de, @unable_to_process)

              Dicom.BinaryFormat.serialize_command_data_set(response_ds)
              |> Pdu.new_data_pdu(presentation_context_id, type: :command_last_fragment)
              |> Pdu.serialize()

            {:ok, cfind_handler} ->
              Logger.debug("CFind handler is defined, returning responses to the caller.")
              msg = {:dicom, %{operation: :cfind, dataset: ds}}

              response_ds =
                handle_cfind(
                  socket,
                  command,
                  ds,
                  presentation_context_id,
                  ts_options,
                  cfind_handler
                )

              Dicom.BinaryFormat.serialize_command_data_set(response_ds)
              |> Pdu.new_data_pdu(presentation_context_id, type: :command_last_fragment)
              |> Pdu.serialize()
          end

        _ ->
          Logger.warning("command field not determied")
          msg = {:dicom, %{operation: :cstore, dataset: ds}}
      end

    new_state = %{state | state: :association_established, buffer: <<>>, received_data: <<>>}

    {new_state, response}
  end

  defp handle_pdu(%Pdu{type: :association_release_request}, state) do
    Logger.info("Releasing association")
    response = Pdu.new_association_release_response_pdu() |> Pdu.serialize()
    {state, response}
  end

  defp handle_pdu(pdu, state) do
    IO.inspect({pdu, state}, label: "Unhandled PDU")
  end

  defp handle_cstore(command, handler, dataset) do
    asci_de = DataSet.fetch!(command, :AffectedSOPClassUID)
    mid_de = DataSet.fetch!(command, :MessageID)
    asii_de = DataSet.fetch!(command, :AffectedSOPInstanceUID)

    # API is a map, so we can extend it with user information, etc
    handler.(%{dataset: dataset})

    response_ds =
      Dicom.DataSet.from_keyword_list(
        AffectedSOPClassUID: DataElement.value(asci_de),
        CommandField: 0x8001,
        MessageIDBeingRespondedTo: DataElement.value(mid_de),
        CommandDataSetType: @no_dataset_present,
        Status: 0,
        AffectedSOPInstanceUID: DataElement.value(asii_de)
      )

    response_ds
  end

  defp cfind_response_header(command, presentation_context_id, status) do
    asci_de = DataSet.fetch!(command, :AffectedSOPClassUID)
    mid_de = DataSet.fetch!(command, :MessageID)

    response =
      Dicom.DataSet.from_keyword_list(
        AffectedSOPClassUID: DataElement.value(asci_de),
        CommandField: 0x8020,
        MessageIDBeingRespondedTo: DataElement.value(mid_de),
        # This field shall be set to the value of 0101H (Null) if no Data Set is present; any other value indicates a Data Set is included in the Message.
        CommandDataSetType: @dataset_present,
        # 0x0000 Success, 0xff00 Pending
        Status: status
      )

    Dicom.BinaryFormat.serialize_command_data_set(response)
    |> Pdu.new_data_pdu(presentation_context_id, type: :command_last_fragment)
    |> Pdu.serialize()
  end

  defp cfind_response_data(presentation_context_id, response) do
    # TODO: options are hardcoded and need to be obtained from PC
    Dicom.BinaryFormat.serialize(response, endianness: :little, explicit: true)
    |> Pdu.new_data_pdu(presentation_context_id, type: :data_last_fragment)
    |> Pdu.serialize()
  end

  defp cfind_response_tail(affectedsopclassuid, messageidbeingrespondedto, status) do
    Dicom.DataSet.from_keyword_list(
      AffectedSOPClassUID: DataElement.value(affectedsopclassuid),
      CommandField: 0x8020,
      MessageIDBeingRespondedTo: DataElement.value(messageidbeingrespondedto),
      # This field shall be set to the value of 0101H (Null) if no Data Set is present; any other value indicates a Data Set is included in the Message.
      CommandDataSetType: @no_dataset_present,
      # 0xff0 Success, 0xff00 Pending
      Status: status
    )
  end

  defp handle_cfind(socket, command, data_set, presentation_context_id, ts_options, cfind_handler) do
    asci_de = DataSet.fetch!(command, :AffectedSOPClassUID)
    mid_de = DataSet.fetch!(command, :MessageID)

    # state.getresponses is a callback function that must be defined
    # by the specific implementation. It must return a stream
    # of Dicom.DataSet.from_keyword_list.
    stream = cfind_handler.(data_set)

    Enum.map(stream, fn response ->
      header = cfind_response_header(command, presentation_context_id, @cfind_pending)
      :gen_tcp.send(socket, header)
      data = cfind_response_data(presentation_context_id, response)
      :gen_tcp.send(socket, data)
    end)

    response_tail = cfind_response_tail(asci_de, mid_de, @cfind_success)
  end

  defp build_cfind_identifier() do
    identifier = Dicom.DataSet.from_keyword_list(AccessionNumber: "hello")

    identifier
  end
end
