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

  def start(init_args) do
    GenServer.start(__MODULE__, init_args)
  end

  @impl true
  def init(%{socket: socket, event_listener: event_listener}) do
    # TODO move into function
    initial_state = %{
      event_listener: event_listener,
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

  defp accept_associate_request(
         %{presentation_contexts: presentation_contexts} = associate_request
       ) do
    accepted_presentation_contexts =
      presentation_contexts
      |> Enum.map(fn {id, pc} -> {id, Map.put(pc, :result, :accept)} end)
      |> Enum.into(%{})

    %{associate_request | presentation_contexts: accepted_presentation_contexts}
  end

  defp handle_pdu(
         %Pdu{
           type: :associate_request,
           data: associate_request
         },
         %{socket: _socket, state: :waiting_for_association} = state
       ) do
    Logger.info("Accepting association")
    association_data = accept_associate_request(associate_request)

    new_state =
      state
      |> Map.put(:state, :association_established)
      |> Map.put(:association, association_data)

    response =
      Pdu.new_associate_accept_response_pdu(association_data)
      |> Pdu.serialize()

    {new_state, response}
  end

  defp handle_pdu(
         %Pdu{type: :data, data: %{pdv_flags: :command_last_fragment, data: data}},
         %{state: :association_established} = state
       ) do
    Logger.debug("Received command")

    command_ds = Dicom.BinaryFormat.from_binary(data, endianness: :little, explicit: false)

    new_state =
      state
      |> Map.put(:state, :receiving_data)
      |> Map.put(:command, command_ds)

    {new_state, :no_response}
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
           event_listener: event_listener,
           state: :receiving_data,
           received_data: received_data,
           association: %{presentation_contexts: presentation_contexts},
           command: command
         } = state
       ) do
    Logger.debug("Received all data fragments")

    data = received_data <> data

    %{syntaxes: syntaxes} = Map.get(presentation_contexts, presentation_context_id)
    %{uid: ts_uid} = syntaxes |> Enum.find(fn el -> Map.get(el, :syntax_type) == :transfer end)
    %{name: _ts_name, options: ts_options} = Dicom.UidRegistry.get_transfer_syntax(ts_uid)

    # TODO this is not always c-store

    ds = Dicom.BinaryFormat.from_binary(data, ts_options)
    commandField = DataSet.fetch!(command, :CommandField)
    IO.puts(commandField.values)

    response = case commandField.values do
        [0x01] -> IO.inspect("C-Store")
            msg = {:dicom, %{operation: :cfind, dataset: ds}}
            send(event_listener, msg)
            response_ds = handle_cstore(command, ds)
            Dicom.BinaryFormat.serialize_command_data_set(response_ds)
              |> Pdu.new_data_pdu(presentation_context_id)
              |> Pdu.serialize()

        [0x20] -> IO.inspect("C-Find")
            msg = {:dicom, %{operation: :cfind, dataset: ds}}
            #send(event_listener, msg)
            response_ds = handle_cfind(command, ds, :pending)
            # The response is a list of datasets that should? be concatenated into
            # the response buffer 
            {responses, final_buffer} = Enum.map_reduce(response_ds, "", fn res, acc ->
              resp = Dicom.BinaryFormat.serialize_command_data_set(res)
              {resp, acc <> resp}
            end)

            # serialize the final_buffer
            final_buffer
                |> Pdu.new_data_pdu(presentation_context_id)
                |> Pdu.serialize()

        _ -> IO.inspect("command field not determied")
            msg = {:dicom, %{operation: :cstore, dataset: ds}}
            send(event_listener, msg)
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

  defp handle_cstore(command, _data_set) do
    asci_de = DataSet.fetch!(command, :AffectedSOPClassUID)
    mid_de = DataSet.fetch!(command, :MessageID)
    asii_de = DataSet.fetch!(command, :AffectedSOPInstanceUID)

    response_ds =
      Dicom.DataSet.from_keyword_list(
        AffectedSOPClassUID: DataElement.value(asci_de),
        CommandField: 0x8001,
        MessageIDBeingRespondedTo: DataElement.value(mid_de),
        CommandDataSetType: 0x0101,
        Status: 0,
        AffectedSOPInstanceUID: DataElement.value(asii_de)
      )

    response_ds
  end

  defp handle_cfind(command, data_set, :pending) do
    IO.inspect(data_set)
    qr_level = DataSet.fetch!(data_set, :QueryRetrieveLevel)
    asci_de = DataSet.fetch!(command, :AffectedSOPClassUID)
    mid_de = DataSet.fetch!(command, :MessageID)

    response_head =
      Dicom.DataSet.from_keyword_list(
        AffectedSOPClassUID: DataElement.value(asci_de),
        CommandField: 0x8020,
        MessageIDBeingRespondedTo: DataElement.value(mid_de),
        QueryRetrieveLevel: DataElement.value(qr_level),
        CommandDataSetType: 0x0000, # This field shall be set to the value of 0101H (Null) if no Data Set is present; any other value indicates a Data Set is included in the Message.
        Status: 0xff00,  # 0x0000 Success, 0xff00 Pending
      )

    response_rsp1 =
      Dicom.DataSet.from_keyword_list(
        CommandDataSetType: 0x0000, # This field shall be set to the value of 0101H (Null) if no Data Set is present; any other value indicates a Data Set is included in the Message.
        Status: 0xff00,  # 0x0000 Success, 0xff00 Pending
        AccessionNumber: "123",
      )

    response_rsp2 =
      Dicom.DataSet.from_keyword_list(
        CommandDataSetType: 0x0000, # This field shall be set to the value of 0101H (Null) if no Data Set is present; any other value indicates a Data Set is included in the Message.
        Status: 0xff00,  # 0x0000 Success, 0xff00 Pending
        AccessionNumber: "AAA",
      )

    response_tail =
      Dicom.DataSet.from_keyword_list(
        CommandDataSetType: 0x0101, # This field shall be set to the value of 0101H (Null) if no Data Set is present; any other value indicates a Data Set is included in the Message.
        Status: 0x0000  # 0xff0 Success, 0xff00 Pending
      )

    # Return a list of the datasets in revese order
    [response_tail, response_rsp1, response_rsp2, response_head]
  end

  defp build_cfind_identifier() do
    identifier = Dicom.DataSet.from_keyword_list(
        AccessionNumber: "hello"
      )

    identifier
  end
end
