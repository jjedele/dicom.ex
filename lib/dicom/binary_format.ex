defmodule Dicom.BinaryFormat do
  @moduledoc """
  This module implements the DICOM binary data format according to
  [PS 3.5](https://dicom.nema.org/medical/dicom/current/output/chtml/part05/PS3.5.html).
  """
  require Integer
  alias Dicom.DataSet
  alias Dicom.DataElement

  # this is the list from DICOM 2024e
  # https://dicom.nema.org/medical/dicom/current/output/html/part05.html#note_6.2-3-2
  defp vr_to_atom(vr)
       when vr in [
              # application entity
              "AE",
              # age string
              "AS",
              # attribute tag
              "AT",
              # code string
              "CS",
              # date
              "DA",
              # decimal string
              "DS",
              # date time
              "DT",
              # floating point single
              "FL",
              # floating point double
              "FD",
              # integer string
              "IS",
              # long string
              "LO",
              # long text
              "LT",
              # other binary string
              "OB",
              # other double string
              "OD",
              # other float string
              "OF",
              # other long
              "OL",
              # other very long OV
              "OV",
              # other word string
              "OW",
              # person name
              "PN",
              # short string
              "SH",
              # signed long
              "SL",
              # sequence of items
              "SQ",
              # signed short
              "SS",
              # short text
              "ST",
              # signed very long
              "SV",
              # time
              "TM",
              # unlimited characters
              "UC",
              # unique identifier
              "UI",
              # unsigned long
              "UL",
              # unknown
              "UN",
              # universal resource identifier or locator
              "UR",
              # unsigned short
              "US",
              # unlimited text
              "UT",
              # unsigned very long,
              "UV"
            ] do
    String.to_atom(vr)
  end

  defp is_long_data_element(vr) do
    vr in [
      :OB,
      :OF,
      :OW,
      :SQ,
      :SV,
      :UC,
      :UT,
      :UN,
      :UR,
      :UV
    ]
  end

  defp parse_float_32(data, endianness) do
    case endianness do
      :little ->
        <<num::float-32-little>> = data
        num

      :big ->
        <<num::float-32-big>> = data
        num
    end
  end

  defp parse_float_64(data, endianness) do
    case endianness do
      :little ->
        <<num::float-64-little>> = data
        num

      :big ->
        <<num::float-64-big>> = data
        num
    end
  end

  defp parse_signed_16(data, endianness) do
    case endianness do
      :little ->
        <<num::signed-integer-16-little>> = data
        num

      :big ->
        <<num::signed-integer-16-big>> = data
        num
    end
  end

  defp parse_signed_32(data, endianness) do
    case endianness do
      :little ->
        <<num::signed-integer-32-little>> = data
        num

      :big ->
        <<num::signed-integer-32-big>> = data
        num
    end
  end

  defp parse_signed_64(data, endianness) do
    case endianness do
      :little ->
        <<num::signed-integer-64-little>> = data
        num

      :big ->
        <<num::signed-integer-64-big>> = data
        num
    end
  end

  defp parse_string_vr(data) do
    data
    |> String.trim_trailing(<<0>>)
    |> String.split("\\")
  end

  defp map_binary_extractor(data, byte_count, extractor) do
    data
    |> :binary.bin_to_list()
    |> Enum.chunk_every(byte_count)
    |> Enum.map(fn byte_list -> extractor.(:binary.list_to_bin(byte_list)) end)
  end

  defp parse_attribute_tag(data, endianness) do
    <<group::binary-size(2), element::binary-size(2)>> = data
    group = :binary.decode_unsigned(group, endianness)
    element = :binary.decode_unsigned(element, endianness)
    Bitwise.bsl(group, 16) + element
  end

  defp parse_value(:AT, data, endianness, _explicit) do
    data
    |> map_binary_extractor(4, &parse_attribute_tag(&1, endianness))
  end

  defp parse_value(:FL, data, endianness, _explicit) do
    data
    |> map_binary_extractor(4, &parse_float_32(&1, endianness))
  end

  defp parse_value(:FD, data, endianness, _explicit) do
    data
    |> map_binary_extractor(8, &parse_float_64(&1, endianness))
  end

  defp parse_value(string_vr, data, _endianness, _explicit)
       when string_vr in [
              :AE,
              :AS,
              :UI,
              :SH,
              :LO,
              :DS,
              :IS,
              :CS,
              :LT,
              :ST,
              :UR,
              :UT
            ] do
    data
    |> parse_string_vr()
    |> Enum.map(&String.trim_trailing(&1, " "))
  end

  defp parse_value(:UC, data, _endianness, _explicit) do
    data
    |> parse_string_vr()
  end

  defp parse_value(:US, data, endianness, _explicit) do
    data
    |> map_binary_extractor(2, &:binary.decode_unsigned(&1, endianness))
  end

  defp parse_value(:UL, data, endianness, _explicit) do
    data
    |> map_binary_extractor(4, &:binary.decode_unsigned(&1, endianness))
  end

  defp parse_value(:UV, data, endianness, _explicit) do
    data
    |> map_binary_extractor(8, &:binary.decode_unsigned(&1, endianness))
  end

  defp parse_value(:SQ, data, endianness, explicitness) do
    {values, <<>>} =
      from_binary_until(data, 0xFFFEE0DD, endianness: endianness, explicit: explicitness)

    values
    |> normalize_sequence_elements()
  end

  defp parse_value(binary_vr, data, _endianness, _explicit)
       when binary_vr in [:OB, :OW, :UN] do
    [data]
  end

  defp parse_value(:DA, data, endianness, explicit) do
    parse_value(:LO, data, endianness, explicit)
  end

  defp parse_value(:TM, data, endianness, explicit) do
    parse_value(:LO, data, endianness, explicit)
  end

  defp parse_value(:DT, data, endianness, explicit) do
    parse_value(:LO, data, endianness, explicit)
  end

  defp parse_value(:PN, data, endianness, explicit) do
    parse_value(:LO, data, endianness, explicit)
  end

  defp parse_value(:SS, data, endianness, _explicit) do
    data
    |> map_binary_extractor(2, &parse_signed_16(&1, endianness))
  end

  defp parse_value(:SL, data, endianness, _explicit) do
    data
    |> map_binary_extractor(4, &parse_signed_32(&1, endianness))
  end

  defp parse_value(:SV, data, endianness, _explicit) do
    data
    |> map_binary_extractor(8, &parse_signed_64(&1, endianness))
  end

  defp parse_value(vr, data, _endianness, _explicit) do
    IO.inspect({vr, data}, label: "Missing VR parser")
    data
  end

  defp is_sequence_control_element(%DataElement{vr: vr})
       when vr in [:sequence_item, :sequence_item_delimination, :sequence_delimination],
       do: true

  defp is_sequence_control_element(_de), do: false

  defp normalize_sequence_elements(elements) do
    # Sequence control elements are not needed here anymore since the
    # the data is already parsed. We only use them now to separate
    # the nested data sets.
    elements
    |> Enum.chunk_by(&is_sequence_control_element/1)
    |> Enum.filter(fn group -> !(group |> List.first() |> is_sequence_control_element()) end)
    |> Enum.map(&DataSet.from_elements/1)
  end

  defp get_private_tag_vr(_group_number, element_number) do
    if element_number <= 0xFF do
      # Private Creator element
      :LO
    else
      # TODO: maybe at some point we support private tagdict extensions
      :UN
    end
  end

  defp parse_encapsulated_pixel_data(data, endianness) do
    <<group::binary-size(2), element::binary-size(2), length::binary-size(4), rest::binary>> =
      data

    group = :binary.decode_unsigned(group, endianness)
    element = :binary.decode_unsigned(element, endianness)

    length = :binary.decode_unsigned(length, endianness)

    if group == 0xFFFE and element == 0xE0DD do
      {[], rest}
    else
      if not (group == 0xFFFE and element == 0xE000) do
        raise "Invalid pixel data sequence"
      end

      <<value::binary-size(length), rest::binary>> = rest
      {tail_elements, rest} = parse_encapsulated_pixel_data(rest, endianness)
      {[value | tail_elements], rest}
    end
  end

  defp is_sequence_control_element(group_number, element_number)
       when is_integer(group_number) and is_integer(element_number) do
    case {group_number, element_number} do
      {0xFFFE, 0xE000} -> {true, :sequence_item}
      {0xFFFE, 0xE00D} -> {true, :sequence_item_delimination}
      {0xFFFE, 0xE0DD} -> {true, :sequence_delimination}
      _ -> false
    end
  end

  @spec read_next_data_element(
          data :: binary(),
          opts :: [endianness: :little | :big, explicit: boolean()]
        ) :: {:ok, {Dicom.DataElement.t(), binary()}} | {:error, atom()}
  def read_next_data_element(<<>>, _opts), do: {:error, :no_data}

  def read_next_data_element(data, endianness: endianness, explicit: explicit) do
    <<group_number::binary-size(2), element_number::binary-size(2), rest::binary>> = data

    group_number = :binary.decode_unsigned(group_number, endianness)
    element_number = :binary.decode_unsigned(element_number, endianness)

    is_private_element = Integer.is_odd(group_number)

    case is_sequence_control_element(group_number, element_number) do
      {true, item_type} ->
        <<data_length::binary-size(4), rest::binary>> = rest

        {:ok,
         {DataElement.from(
            group_number,
            element_number,
            item_type,
            data_length
          ), rest}}

      false ->
        {value_rep, rest} =
          cond do
            explicit ->
              <<value_rep::binary-size(2), rest::binary>> = rest

              value_rep = vr_to_atom(value_rep)

              {value_rep, rest}

            is_private_element ->
              {get_private_tag_vr(group_number, element_number), rest}

            true ->
              {:ok, value_rep} =
                Dicom.TagDict.get_by_tag_parts(group_number, element_number, :vr)

              {value_rep, rest}
          end

        {value_length, rest} =
          if explicit do
            if is_long_data_element(value_rep) do
              <<_u::16, value_length::binary-size(4), rest::binary>> = rest
              {value_length, rest}
            else
              <<value_length::binary-size(2), rest::binary>> = rest
              {value_length, rest}
            end
          else
            <<value_length::binary-size(4), rest::binary>> = rest
            {value_length, rest}
          end

        value_length = :binary.decode_unsigned(value_length, endianness)

        {data_element, rest} =
          if value_length == 0xFFFFFFFF do
            # Undefined Length: goes to Sequence Delimination item
            # TODO parse properly until end of enscapsulated sequence since things might come after
            {de, rest} =
              if {group_number, element_number} == {0x7FE0, 0x0010} do
                {pixel_value_sequence, rest} = parse_encapsulated_pixel_data(rest, endianness)

                de =
                  DataElement.from(
                    group_number,
                    element_number,
                    :pixel_data,
                    pixel_value_sequence
                  )

                {de, rest}
              else
                {seq_values, rest} =
                  from_binary_until(rest, 0xFFFEE0DD, endianness: endianness, explicit: explicit)

                seq_values = normalize_sequence_elements(seq_values)

                de =
                  DataElement.from(
                    group_number,
                    element_number,
                    :SQ,
                    seq_values
                  )

                {de, rest}
              end

            {de, rest}
          else
            <<value::binary-size(value_length), rest::binary>> = rest

            value = parse_value(value_rep, value, endianness, explicit)

            data_element =
              DataElement.from(
                group_number,
                element_number,
                value_rep,
                value
              )

            {data_element, rest}
          end

        {:ok, {data_element, rest}}
    end
  end

  def from_binary_until(data, until_tag, opts) do
    case read_next_data_element(data, opts) do
      {:ok, {de, rest}} ->
        cond do
          DataElement.tag(de) < until_tag ->
            {other_des, rest} = from_binary_until(rest, until_tag, opts)
            {[de | other_des], rest}

          DataElement.tag(de) == until_tag ->
            {[de], rest}

          true ->
            {[], data}
        end

      {:error, :no_data} ->
        {[], data}
    end
  end

  def from_binary(data, opts)
      when is_binary(data) do
    ds =
      Stream.unfold(data, fn ac ->
        case read_next_data_element(ac, opts) do
          {:ok, {de, rest}} -> {de, rest}
          {:error, :no_data} -> nil
        end
      end)
      |> Dicom.DataSet.from_elements()

    ds
  end

  # TODO add better error handling to parsing

  @spec from_file!(Path.t()) :: DataSet.t()
  def from_file!(path) do
    {:ok, data} = File.read(path)
    <<_preamble::binary-size(128), "DICM", data::binary>> = data

    file_meta_opts = [endianness: :little, explicit: true]
    {:ok, {file_meta_length_de, rest}} = read_next_data_element(data, file_meta_opts)
    file_meta_length = DataElement.value(file_meta_length_de)
    <<file_meta_data::binary-size(file_meta_length), rest::binary>> = rest
    file_meta_ds = from_binary(file_meta_data, file_meta_opts)

    file_ts =
      file_meta_ds
      |> Dicom.DataSet.value_for!(:TransferSyntaxUID)
      |> Dicom.UidRegistry.get_transfer_syntax()

    ts_options = Map.fetch!(file_ts, :options)

    ds = from_binary(rest, ts_options)
    ds
  end

  @spec from_file(Path.t()) :: {:ok, DataSet.t()} | {:error, atom()}
  def from_file(path) do
    try do
      ds = from_file!(path)
      {:ok, ds}
    rescue
      _ -> {:error, :invalid_file}
    end
  end

  def serialize_u16(num, :little), do: <<num::unsigned-integer-little-16>>
  def serialize_u32(num, :little), do: <<num::unsigned-integer-little-32>>

  def serialize_uid(uid, _endianness) do
    if rem(byte_size(uid), 2) == 1 do
      uid <> <<0>>
    else
      uid
    end
  end

  def serialize_cs(string, _endianness) do
    string <> <<0>>
  end

  def serialize_sh(string, _endianness) do
    string <> <<0>>
  end

  def serialize_data_element(data_element, endianness: endianness, explicit: false) do
    group = serialize_u16(data_element.group_number, endianness)
    element = serialize_u16(data_element.element_number, endianness)

    # TODO cannot handle VM > 1
    value =
      case data_element.vr do
        :US -> serialize_u16(data_element |> DataElement.value(), endianness)
        :UL -> serialize_u32(data_element |> DataElement.value(), endianness)
        :UI -> serialize_uid(data_element |> DataElement.value(), endianness)
        :LO -> serialize_u16(data_element |> DataElement.value(), endianness)
        :SH -> serialize_sh(data_element |> DataElement.value(), endianness)
        :CS -> serialize_cs(data_element |> DataElement.value(), endianness)
      end

    value_length = serialize_u32(byte_size(value), endianness)

    group <> element <> value_length <> value
  end

  def serialize_command_data_set(data_set) do
    # command data set per standard is little endian, implicit vr
    # https://dicom.nema.org/dicom/2013/output/chtml/part07/sect_6.3.html
    serialization_options = [endianness: :little, explicit: false]

    serialized =
      for {_tag, de} <- data_set do
        Dicom.BinaryFormat.serialize_data_element(de, serialization_options)
      end
      |> Enum.into(<<>>)

    cgroup_length_de = Dicom.DataElement.from(:CommandGroupLength, [byte_size(serialized)])

    serialized =
      Dicom.BinaryFormat.serialize_data_element(
        cgroup_length_de,
        serialization_options
      ) <> serialized

    serialized
  end
end
