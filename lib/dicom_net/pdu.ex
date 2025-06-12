defmodule DicomNet.Pdu do
  @moduledoc """
  This module implements the DICOM upper layer network protocol according to
  [PS 3.8](https://dicom.nema.org/dicom/2013/output/chtml/part08/PS3.8.html).
  """
  alias DicomNet.Pdu
  defstruct [:type, :length, :data]

  @pdu_types %{
    1 => :associate_request,
    2 => :associate_accept,
    3 => :association_reject_response,
    4 => :data,
    5 => :association_release_request,
    6 => :association_release_response
  }

  @tansfer_syntaxes %{
    "1.2.840.10008.1.2" => :implicit_vr_endian,
    "1.2.840.10008.1.2.1" => :explicit_vr_little_endian,
    "1.2.840.10008.1.2.2" => :explicit_vr_big_endian
  }

  @user_info_items %{
    0x51 => :max_pdu_length
  }

  @pdv_flags %{
    0x00 => :data_more_fragments,
    0x02 => :data_last_fragment,
    0x03 => :command_last_fragment
  }

  defp serialize_presentation_context_request({pc_id, %{syntaxes: syntaxes}}) do
    items =
      Enum.map(syntaxes, fn %{syntax_type: type, uid: uid} ->
        tag = if type == :abstract, do: 0x30, else: 0x40
        <<tag::8, 0::8, byte_size(uid)::16, uid::binary>>
      end)
      |> Enum.into(<<>>)

    data = <<pc_id::8, 0::8, 0::16, items::binary>>
    <<0x20::8, 0::8, byte_size(data)::16, data::binary>>
  end

  defp parse_syntax_field(data) do
    case data do
      <<0x30::8, _r::8, length::16, abstract_syntax_uid::binary-size(length), rest::binary>> ->
        {%{:syntax_type => :abstract, :uid => abstract_syntax_uid}, rest}

      <<0x40::8, _r::8, length::16, transfer_syntax_uid::binary-size(length), rest::binary>> ->
        {%{
           :syntax_type => :transfer,
           :uid => transfer_syntax_uid,
           :name => Map.get(@tansfer_syntaxes, transfer_syntax_uid)
         }, rest}

      <<>> ->
        nil
    end
  end

  defp parse_user_info_field(data) do
    case data do
      <<type::8, _r::8, length::16, data::binary-size(length), rest::binary>> ->
        {%{:type => type, :data => data, :name => Map.get(@user_info_items, type)}, rest}

      <<>> ->
        nil
    end
  end

  defp parse_associate_request_item(data) do
    case data do
      <<0x10::8, _r::8, length::16, app_context_uid::binary-size(length), rest::binary>> ->
        {%{:item_type => :application_context, :uid => app_context_uid}, rest}

      <<0x20::8, _r::8, length::16, presentation_context_id::8, _r2::24,
        sub_items::binary-size(length - 4), rest::binary>> ->
        {
          %{
            :item_type => :presentation_context,
            :id => presentation_context_id,
            :syntaxes => Stream.unfold(sub_items, &parse_syntax_field/1) |> Enum.to_list()
          },
          rest
        }

      <<0x21::8, _r::8, length::16, presentation_context_id::8, _r2::8, result::8,
        _r3::8, sub_items::binary-size(length - 4), rest::binary>> ->
        result =
          case result do
            0 -> :accept
            1 -> :user_rejection
            2 -> :no_reason
            3 -> :abstract_syntax_not_supported
            4 -> :transfer_syntaxes_not_supported
            _ -> result
          end

        {
          %{
            :item_type => :presentation_context,
            :id => presentation_context_id,
            :result => result,
            :syntaxes => Stream.unfold(sub_items, &parse_syntax_field/1) |> Enum.to_list()
          },
          rest
        }

      <<0x50::8, _r::8, length::16, user_data::binary-size(length), rest::binary>> ->
        {%{
           :item_type => :user_information,
           :items => Stream.unfold(user_data, &parse_user_info_field/1) |> Enum.to_list()
         }, rest}

      <<>> ->
        nil
    end
  end

  defp parse_associate_request(data) do
    <<protocol_version::16-integer-unsigned, _unused::binary-size(2),
      called_ae_title::binary-size(16), calling_ae_title::binary-size(16),
      _unused2::binary-size(32), items::binary>> = data

    called_ae_title = String.trim(called_ae_title)
    calling_ae_title = String.trim(calling_ae_title)

    items =
      Stream.unfold(items, &parse_associate_request_item/1)
      |> Enum.group_by(fn i -> Map.fetch!(i, :item_type) end)

    # TODO validate that there is only 1
    app_context = Map.fetch!(items, :application_context) |> Enum.at(0) |> Map.fetch!(:uid)
    # TODO validate that there is only 1
    user_info =
      Map.fetch!(items, :user_information)
      |> Enum.at(0)
      |> Map.fetch!(:items)
      |> Enum.map(fn %{:type => type, :name => name, :data => data} = item ->
        {name || type, item}
      end)
      |> Enum.into(%{})

    presentations_ctxs =
      Map.fetch!(items, :presentation_context)
      |> Enum.map(fn %{:id => id, :syntaxes => syntaxes} -> {id, %{:syntaxes => syntaxes}} end)
      |> Enum.into(%{})

    %{
      :pdu_type => :associate_request,
      :protocol_version => protocol_version,
      :called_ae_title => called_ae_title,
      :calling_ae_title => calling_ae_title,
      :application_context => app_context,
      :user_information => user_info,
      :presentation_contexts => presentations_ctxs
    }
  end

  defp parse_data_pdu(data) do
    <<pdv_length::32, pdv_transfer_ctx_id::8, pdv_flags::8, pdv_data::binary>> = data

    %{
      :pdu_type => :data,
      :pdv_length => pdv_length,
      :pdv_transfer_ctx_id => pdv_transfer_ctx_id,
      :pdv_flags => Map.fetch!(@pdv_flags, pdv_flags),
      :data => pdv_data
    }
  end

  def from_data(data) when byte_size(data) < 6 do
    {:error, :no_pdu, <<>>}
  end

  def from_data(data) do
    <<type::8, _r::8, length::32, _rest::binary>> = data
    full_pdu_length = length + 6

    if Map.has_key?(@pdu_types, type) && byte_size(data) >= full_pdu_length do
      <<pdu_data::binary-size(full_pdu_length), rest::binary>> = data
      {:ok, parse(pdu_data), rest}
    else
      {:error, :no_pdu, data}
    end
  end

  def parse(data) do
    <<type::8-integer-unsigned, _unused::binary-size(1), length::integer-unsigned-32,
      rest::binary>> =
      data

    type = Map.fetch!(@pdu_types, type)

    pdu_data =
      case type do
        :associate_request -> parse_associate_request(rest)
        :associate_accept -> parse_associate_request(rest)
        :association_reject_response -> nil
        :data -> parse_data_pdu(rest)
        :association_release_request -> nil
        :association_release_response -> nil
      end

    %Pdu{
      type: type,
      length: length,
      data: pdu_data
    }
  end

  defp serialize_application_context(application_context) do
    <<0x10::8, 0::8, byte_size(application_context)::16, application_context::binary>>
  end

  defp serialize_presentation_context_answer({pc_id, %{:result => result, :syntaxes => syntaxes}}) do
    result_byte =
      case result do
        :accept -> 0
      end

    %{:uid => tranfer_syntax_uid} =
      syntaxes
      |> Enum.filter(fn %{:syntax_type => stype} -> stype == :transfer end)
      |> Enum.at(0)

    ts_data = <<0x40::8, 0::8, byte_size(tranfer_syntax_uid)::16, tranfer_syntax_uid::binary>>
    data = <<pc_id::8, 0::8, result_byte::8, 0::8, ts_data::binary>>

    length = byte_size(data)
    <<0x21::8, 0::8, length::16, data::binary>>
  end

  defp serialize_user_info_item(%{:type => type, :data => data}) do
    <<type::8, 0::8, byte_size(data)::16, data::binary>>
  end

  defp serialize_user_information(user_info) do
    item_data =
      Enum.reduce(Map.values(user_info), <<>>, fn it, acc ->
        acc <> serialize_user_info_item(it)
      end)

    <<0x50::8, 0::8, byte_size(item_data)::16, item_data::binary>>
  end

  def serialize(%Pdu{
        type: :data,
        data: %{presentation_context_id: presentation_context_id, data: data, flag: flag}
      }) do
    pdv_length = byte_size(data) + 2
    pdv = <<pdv_length::32, presentation_context_id::8, flag, data::binary>>
    pdu = <<4::8, 0::8, byte_size(pdv)::32, pdv::binary>>
    pdu
  end

  def serialize(%Pdu{type: :association_release_response}) do
    <<6::8, 0::8, 4::32, 0::32>>
  end

  def serialize(%Pdu{type: :association_release_request}) do
    <<5::8, 0::8, 4::32, 0::32>>
  end

  def serialize(%Pdu{type: :associate_request, data: assoc_data}) do
    %{
      protocol_version: protocol_version,
      calling_ae_title: calling_ae_title,
      called_ae_title: called_ae_title,
      application_context: application_context,
      presentation_contexts: presentation_contexts,
      user_information: user_information
    } = assoc_data

    calling_ae_title = String.pad_trailing(calling_ae_title, 16, " ")
    called_ae_title = String.pad_trailing(called_ae_title, 16, " ")

    ac_data = serialize_application_context(application_context)

    pc_data =
      Enum.reduce(presentation_contexts, <<>>, fn pc, acc ->
        acc <> serialize_presentation_context_request(pc)
      end)

    uc_data = serialize_user_information(user_information)

    data =
      <<protocol_version::16, 0::16, called_ae_title::binary, calling_ae_title::binary, 0::256,
        ac_data::binary, pc_data::binary, uc_data::binary>>

    length = byte_size(data)

    <<1::8, 0::8, length::32, data::binary>>
  end

  def serialize(%Pdu{type: :associate_accept_response, data: assoc_data}) do
    %{
      protocol_version: protocol_version,
      calling_ae_title: calling_ae_title,
      called_ae_title: called_ae_title,
      application_context: application_context,
      presentation_contexts: presentation_contexts,
      user_information: user_information
    } = assoc_data

    calling_ae_title = String.pad_trailing(calling_ae_title, 16, " ")
    called_ae_title = String.pad_trailing(called_ae_title, 16, " ")

    ac_data = serialize_application_context(application_context)

    pc_data =
      Enum.reduce(presentation_contexts, <<>>, fn pc, acc ->
        acc <> serialize_presentation_context_answer(pc)
      end)

    uc_data = serialize_user_information(user_information)

    data =
      <<protocol_version::16, 0::16, called_ae_title::binary, calling_ae_title::binary, 0::256,
        ac_data::binary, pc_data::binary, uc_data::binary>>

    length = byte_size(data)

    pdu_type = 2

    data =
      <<pdu_type::8, 0::8, length::32, data::binary>>

    data
  end

  def serialize(%Pdu{type: :association_reject_response, data: data}) do
    # https://dicom.nema.org/dicom/2013/output/chtml/part08/sect_9.3.html#table_9-21
    %{
      source: source,
      reason: reason
    } = data

    header = <<3::8, 0::8, 4::32, 0::8, 1::8>>

    case source do
      :dicom_ul_service_user ->
        case reason do
          :no_reason_given ->
            header <> <<1::8, 1::8>>

          :application_context_name_not_supported ->
            header <> <<1::8, 2::8>>

          :calling_ae_title_not_recognized ->
            header <> <<1::8, 3::8>>


          :called_ae_title_not_recognized ->
            header <> <<1::8, 7::8>>
        end

      :dicom_ul_service_provider_acse ->
        case reason do
          :no_reason_given ->
            header <> <<1::8, 1::8>>

          :protocol_version_not_supported ->
            header <> <<1::8, 2::8>>
        end

      :dicom_ul_service_provider_presentation ->
        case reason do
          :no_reason_given ->
            header <> <<1::8, 1::8>>

          :protocol_version_not_supported ->
            header <> <<1::8, 2::8>>
        end
    end
  end

  def new_associate_accept_response_pdu(association_data) do
    %Pdu{
      type: :associate_accept_response,
      length: 0,
      data: association_data
    }
  end

  def new_data_pdu(data, presentation_context_id, type: type) do
    flag =
      case type do
        :data_more_fragments -> 0x00
        :data_last_fragment -> 0x02
        :command_last_fragment -> 0x03
      end

    %Pdu{
      type: :data,
      length: 0,
      data: %{
        presentation_context_id: presentation_context_id,
        data: data,
        flag: flag
      }
    }
  end

  def new_association_release_response_pdu() do
    %Pdu{
      type: :association_release_response,
      length: 0,
      data: nil
    }
  end

  def new_association_release_request_pdu() do
    %Pdu{
      type: :association_release_request,
      length: 0,
      data: nil
    }
  end

  def new_associate_request_pdu(assoc_data) do
    %Pdu{type: :associate_request, length: 0, data: assoc_data}
  end

  def new_association_reject_response_pdu(source, reason) do
    %Pdu{
      type: :association_reject_response,
      data: %{
        source: source,
        reason: reason
      }
    }
  end
end
