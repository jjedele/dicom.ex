defmodule DicomNet.SCU do
  @moduledoc """
  Basic DICOM SCU functionality. Currently only supports C-FIND queries.
  """

  require Logger
  alias DicomNet.Pdu
  alias Dicom.DataSet
  alias Dicom.BinaryFormat

  @application_context "1.2.840.10008.3.1.1.1"
  @transfer_syntax "1.2.840.10008.1.2.1"

  @cfind_pending 0xFF00

  @doc """
  Perform a C-FIND query against a remote Application Entity.

  * `host` - hostname or IP address of the peer AE
  * `port` - TCP port used for the association
  * `called_ae` - AE title of the peer
  * `calling_ae` - AE title to use locally
  * `sop_class_uid` - the SOP Class UID describing the query model
  * `identifier` - a `Dicom.DataSet` representing the C-FIND identifier

  Returns `{:ok, list_of_data_sets}` on success or `{:error, reason}`.
  """
  def cfind(host, port, called_ae, calling_ae, sop_class_uid, identifier) do
    with {:ok, socket} <- :gen_tcp.connect(String.to_charlist(host), port, [:binary, active: false]),
         :ok <- associate(socket, called_ae, calling_ae, sop_class_uid),
         {:ok, results} <- do_cfind(socket, identifier, sop_class_uid),
         :ok <- release(socket) do
      :gen_tcp.close(socket)
      {:ok, results}
    else
      {:error, _} = err -> err
    end
  end

  defp associate(socket, called_ae, calling_ae, sop_class_uid) do
    assoc_data = %{
      protocol_version: 1,
      called_ae_title: called_ae,
      calling_ae_title: calling_ae,
      application_context: @application_context,
      presentation_contexts: [
        {1,
         %{
           syntaxes: [
             %{syntax_type: :abstract, uid: sop_class_uid},
             %{syntax_type: :transfer, uid: @transfer_syntax}
           ]
         }}
      ],
      user_information: %{max_pdu_length: %{type: 0x51, data: <<16_384::32>>}}
    }

    pdu = Pdu.new_associate_request_pdu(assoc_data) |> Pdu.serialize()
    :ok = :gen_tcp.send(socket, pdu)

    case recv_pdu(socket, <<>>) do
      {:ok, %Pdu{type: :associate_accept}, _rest} -> :ok
      {:ok, %Pdu{type: :association_reject_response}, _rest} -> {:error, :rejected}
      other -> {:error, {:unexpected_pdu, other}}
    end
  end

  defp do_cfind(socket, identifier, sop_class_uid) do
    command =
      DataSet.from_keyword_list(
        AffectedSOPClassUID: sop_class_uid,
        CommandField: 0x0020,
        MessageID: 1,
        Priority: 0,
        CommandDataSetType: 0x0001
      )

    cmd =
      BinaryFormat.serialize_command_data_set(command)
      |> Pdu.new_data_pdu(1, type: :command_last_fragment)
      |> Pdu.serialize()

    :ok = :gen_tcp.send(socket, cmd)

    data =
      BinaryFormat.serialize(identifier, endianness: :little, explicit: true)
      |> Pdu.new_data_pdu(1, type: :data_last_fragment)
      |> Pdu.serialize()

    :ok = :gen_tcp.send(socket, data)

    collect_results(socket, <<>>, [])
  end

  defp release(socket) do
    :ok = :gen_tcp.send(socket, Pdu.new_association_release_request_pdu() |> Pdu.serialize())
    case recv_pdu(socket, <<>>) do
      {:ok, %Pdu{type: :association_release_response}, _} -> :ok
      _ -> :ok
    end
  end

  defp collect_results(socket, buffer, acc) do
    case recv_pdu(socket, buffer) do
      {:ok, %Pdu{type: :data, data: %{pdv_flags: :command_last_fragment, data: cmd}}, rest} ->
        command = BinaryFormat.from_binary(cmd, endianness: :little, explicit: false)
        status = DataSet.value_for!(command, :Status)

        if status == @cfind_pending do
          {:ok, %Pdu{type: :data, data: %{data: dset}}, rest2} = recv_pdu(socket, rest)
          ds = BinaryFormat.from_binary(dset, endianness: :little, explicit: true)
          collect_results(socket, rest2, [ds | acc])
        else
          {:ok, Enum.reverse(acc)}
        end

      {:ok, %Pdu{type: :association_release_request}, _rest} ->
        {:ok, Enum.reverse(acc)}

      {:error, reason} -> {:error, reason}
    end
  end

  defp recv_pdu(socket, buffer) do
    case Pdu.from_data(buffer) do
      {:ok, pdu, rest} -> {:ok, pdu, rest}
      _ ->
        case :gen_tcp.recv(socket, 0) do
          {:ok, data} -> recv_pdu(socket, buffer <> data)
          {:error, reason} -> {:error, reason}
        end
    end
  end
end
