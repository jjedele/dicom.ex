defmodule Dicom.BinaryFormat.ParseError do
  defexception [:message, :group_number, :element_number, :byte_offset]
end

defmodule Dicom.BinaryFormat do
  @moduledoc """
  DICOM binary format serialization/deserialization as defined in
  [PS 3.5](https://dicom.nema.org/medical/dicom/current/output/chtml/part05/PS3.5.html).

  A simple example of reading, manipulating and writing a DICOM
  file looks as follows:

      iex> {:ok, ds} = File.read!("some-file.dcm") |> BinaryFormat.from_file_data()
      iex> ds = Dicom.DataSet.put(ds, :PatientName, :PN, ["Anonymized"])
      iex> data = BinaryFormat.to_file_data(ds)
      iex> File.write!("some-file-anon.dcm", data)
  """
  require Integer
  require Logger
  alias Dicom.BinaryFormat
  alias Dicom.UidRegistry
  alias Dicom.DataSet
  alias Dicom.DataElement

  @typedoc """
  Options for the de(serialization) of DICOM binaries.

  Both little and big endian byte ordering is supported by
  setting `endianness` to `:little` or `:big` respectively.
  Big endian encoding is discouraged for new files.

  Setting `explicit` to `true` serializes the data elements
  with their value representations (VRs) included. If it
  is set to `false`, implicit VR encoding is used. Readers
  of implicit VR data sets must have access to a tag dictionary
  defining the VRs for all contained data elements.
  """
  @type serialization_options :: [endianness: :little | :big, explicit: boolean()]

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
      :UV,
      :OV,
      :OD,
      :OL
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
    {elements, _remaining_data} =
      read_from_binary!(data, 0xFFFEE0DD, true, endianness: endianness, explicit: explicitness)

    elements
    |> normalize_sequence_elements()
  end

  defp parse_value(binary_vr, data, _endianness, _explicit)
       when binary_vr in [:OB, :OW, :UN, :OF, :OV, :OL, :OD] do
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

  defp read_tag(data, endianness: endianness, explicit: _explicit) do
    <<group_number::binary-size(2), element_number::binary-size(2), rest::binary>> = data

    group_number = :binary.decode_unsigned(group_number, endianness)
    element_number = :binary.decode_unsigned(element_number, endianness)

    {{group_number, element_number}, rest}
  end

  @doc """
  Read the next data element from a binary.

  This function fails if the binary does not contain at least
  one complete data element. Any additional data following the
  data element is returned as the second element in the returned
  tuple.
  """
  @spec read_next_data_element(
          data :: binary(),
          opts :: serialization_options()
        ) :: {:ok, {Dicom.DataElement.t(), binary()}} | {:error, atom()}

  def read_next_data_element(<<>>, _opts), do: {:error, :no_data}

  def read_next_data_element(data, [endianness: endianness, explicit: explicit] = opts) do
    {{group_number, element_number}, rest} = read_tag(data, opts)

    is_private_element = Integer.is_odd(group_number)

    case is_sequence_control_element(group_number, element_number) do
      {true, item_type} ->
        <<data_length::binary-size(4), rest::binary>> = rest

        {:ok,
         {DataElement.from(
            group_number,
            element_number,
            item_type,
            [data_length]
          ), rest}}

      false ->
        {value_rep, rest} =
          try do
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
          rescue
            _ ->
              raise BinaryFormat.ParseError,
                message: "Unable to parse VR",
                group_number: group_number,
                element_number: element_number
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
                    value_rep,
                    pixel_value_sequence
                  )

                {de, rest}
              else
                {elements, rest} =
                  read_from_binary!(rest, 0xFFFEE0DD, true, opts)

                seq_values =
                  elements
                  |> normalize_sequence_elements()

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

  @doc """
  Reads `Dicom.DataElement`s from a binary.

  The reading can be limited to a certain range of data using the
  `until_tag` and `inclusive` parameters. Data elements are
  read as long the tags are lesser or equal than `until_tag`. If
  `inclusive` is `true`, the last element falling in this range
  is parsed and added to the resulting data set. If `inclusive` is
  `false`, the last element is skipped.

  Raises an error if the data cannot be parsed.

  Returns a tuple of `Dicom.DataSet` and binary data
  from the end which was not consumed during parsing.

  ## Examples

      iex> serialization_options = [endianness: :little, explicit: true]
      # read all elements in data
      iex> elements = BinaryFormat.read_from_binary!(data, serialization_options)
      # read elements until PixelData, skipping the latter
      iex> elements = BinaryFormat.read_from_binary!(data, 0x7FE00010, false, serialization_options)
  """
  @spec read_from_binary!(binary(), integer(), boolean(), serialization_options()) ::
          {[DataElement.t()], binary()}
  def read_from_binary!(data, until_tag \\ 0xFFFFFFFF, inclusive \\ false, opts)
      when is_binary(data) do
    # check if we continue parsing
    read_next =
      if byte_size(data) >= 4 do
        {{group_number, element_number}, _rest} = read_tag(data, opts)
        tag = Bitwise.bsl(group_number, 16) + element_number
        (inclusive and tag <= until_tag) or tag < until_tag
      else
        false
      end

    # recursively read the elements
    if read_next do
      case read_next_data_element(data, opts) do
        {:ok, {current_element, rest}} ->
          {tail_elements, rest} =
            if DataElement.tag(current_element) < until_tag do
              read_from_binary!(rest, until_tag, inclusive, opts)
            else
              # E.g. when we parse until the sequence delimination tag 0xFFFEE0DD,
              # the tag is one of the highest found. Without the break clause,
              # we would continue parsing after the tag.
              {[], rest}
            end

          {[current_element | tail_elements], rest}

        {:error, :no_data} ->
          {[], data}
      end
    else
      {[], data}
    end
  end

  defp read_from_binary(data, serialization_options) do
    try do
      {:ok, read_from_binary!(data, serialization_options)}
    rescue
      error -> {:error, error}
    end
  end

  @doc """
  Tries to read `Dicom.DataSet` from `data`.

  Endianness and value representation must be defined via `serialization_options`.

  Returns the parsed data set or raises an error if it cannot be
  parsed successfully.

  This function parses a set of concatenated data elements into
  a data set. Use `from_file_data/1` to parse full "part 10" file
  data including header and meta data.
  """
  @spec from_binary!(binary(), serialization_options()) :: DataSet.t()
  def from_binary!(data, serialization_options)
      when is_binary(data) do
    {elements, _remaining_data} = read_from_binary!(data, serialization_options)
    DataSet.from_elements(elements)
  end

  # TODO add better error handling to parsing

  defp read_file_header(data) do
    case data do
      <<_preamble::binary-size(128), "DICM", data::binary>> ->
        {:ok, data}

      _ ->
        {:error, "Data does not have valid DICOM header"}
    end
  end

  defp read_file_metadata(data) do
    file_meta_opts = [endianness: :little, explicit: true]

    with {:ok, {file_meta_length_de, remaining_data}} <-
           read_next_data_element(data, file_meta_opts),
         file_meta_length <- DataElement.value(file_meta_length_de),
         <<file_meta_data::binary-size(file_meta_length), remaining_data::binary>> <-
           remaining_data,
         {:ok, {file_meta_elements, <<>>}} <- read_from_binary(file_meta_data, file_meta_opts) do
      {:ok, {DataSet.from_elements(file_meta_elements), remaining_data}}
    else
      {:error, reason} -> {:error, reason}
    end
  end

  defp get_transfer_syntax(file_meta_ds) do
    with {:ok, transfer_syntax_de} <- DataSet.fetch(file_meta_ds, :TransferSyntaxUID),
         transfer_syntax_uid <- DataElement.value(transfer_syntax_de),
         {:ok, transfer_syntax} <-
           Dicom.UidRegistry.get_transfer_syntax_by_uid(transfer_syntax_uid) do
      {:ok, transfer_syntax}
    else
      {:error, reason} -> {:error, reason}
      :error -> {:error, :unknown}
    end
  end

  @doc """
  Tries to parse full "part 10"-encoded file data into a `Dicom.DataSet`.

  Returns a tuple of shape `{:ok, data_set}` if successful or `{:error, reason}`
  if not.
  """
  @spec from_file_data(binary()) :: {:ok, DataSet.t()} | {:error, any()}
  def from_file_data(data) do
    with {:ok, data} <- read_file_header(data),
         {:ok, {file_meta_ds, remaining_data}} <- read_file_metadata(data),
         {:ok, transfer_syntax} <- get_transfer_syntax(file_meta_ds),
         {:ok, serialization_options} <- Map.fetch(transfer_syntax, :options),
         {:ok, {elements, _remaining_data}} <-
           read_from_binary(remaining_data, serialization_options) do
      ds =
        elements
        |> DataSet.from_elements()
        |> DataSet.with_file_meta(file_meta_ds)

      {:ok, ds}
    end
  end

  @deprecated "Directly use `File.read!/1` and `BinaryFormat.from_file_data/1` instead"
  @spec from_file!(Path.t()) :: DataSet.t()
  def from_file!(path) do
    {:ok, data} = File.read(path)
    {:ok, ds} = from_file_data(data)
    ds
  end

  @deprecated "Directly use `File.read/1` and `BinaryFormat.from_file_data/1` instead"
  @spec from_file(Path.t()) :: {:ok, DataSet.t()} | {:error, atom()}
  def from_file(path) do
    try do
      ds = from_file!(path)
      {:ok, ds}
    rescue
      exc ->
        IO.inspect(exc, label: "error")
        {:error, :invalid_file}
    end
  end

  defp serialize_u16(num, :little), do: <<num::unsigned-integer-little-16>>
  defp serialize_u16(num, :big), do: <<num::unsigned-integer-big-16>>
  defp serialize_s16(num, :little), do: <<num::signed-integer-little-16>>
  defp serialize_s16(num, :big), do: <<num::signed-integer-big-16>>
  defp serialize_u32(num, :little), do: <<num::unsigned-integer-little-32>>
  defp serialize_u32(num, :big), do: <<num::unsigned-integer-big-32>>
  defp serialize_s32(num, :little), do: <<num::signed-integer-little-32>>
  defp serialize_s32(num, :big), do: <<num::signed-integer-big-32>>
  defp serialize_u64(num, :little), do: <<num::unsigned-integer-little-64>>
  defp serialize_u64(num, :big), do: <<num::unsigned-integer-big-64>>
  defp serialize_s64(num, :little), do: <<num::signed-integer-little-64>>
  defp serialize_s64(num, :big), do: <<num::signed-integer-big-64>>
  defp serialize_f32(num, :little), do: <<num::float-32-little>>
  defp serialize_f32(num, :big), do: <<num::float-32-big>>
  defp serialize_f64(num, :little), do: <<num::float-64-little>>
  defp serialize_f64(num, :big), do: <<num::float-64-big>>

  defp serialize_at(tag, endianness) do
    serialize_u16(Bitwise.bsr(tag, 16), endianness) <>
      serialize_u16(Bitwise.band(tag, 0xFF), endianness)
  end

  @doc """
  Serializes `data_set` into a full binary string following [DICOM part 10](https://dicom.nema.org/medical/dicom/current/output/html/part10.html#chapter_7).

  The preamble of the serialized file can be set with the `preamble` parameter,
  which defaults to zeroes.
  """
  @spec to_file_data(DataSet.t(), binary()) :: binary()
  def to_file_data(data_set, preamble \\ <<0::128*8>>) do
    file_meta =
      if(is_nil(data_set.file_meta), do: DataSet.empty(), else: data_set.file_meta)
      |> DataSet.put_default(:FileMetaInformationVersion, :OB, [<<0, 1>>])
      |> DataSet.put_default(
        :MediaStorageSOPClassUID,
        :UI,
        [DataSet.value_for!(data_set, :SOPClassUID)]
      )
      |> DataSet.put_default(
        :MediaStorageSOPInstanceUID,
        :UI,
        [DataSet.value_for!(data_set, :SOPInstanceUID)]
      )
      |> DataSet.put_default(:ImplementationClassUID, :UI, ["1.2.826.0.1.3680043.10.1603.0.0"])
      |> DataSet.put_default(:ImplementationVersionName, :SH, ["DICOM.ex 0.x"])

    header_serialization_opts = [endianness: :little, explicit: true]

    file_meta_serialized = serialize(file_meta, header_serialization_opts)
    file_meta_length = DataElement.new(0x00020000, :UL, [byte_size(file_meta_serialized)])

    file_meta_length_serialized =
      serialize_data_element(file_meta_length, header_serialization_opts)

    # data part
    ts = file_meta |> DataSet.value_for!(:TransferSyntaxUID) |> UidRegistry.get_transfer_syntax!()
    data_serialized = serialize(data_set, ts.options)

    data =
      preamble <> "DICM" <> file_meta_length_serialized <> file_meta_serialized <> data_serialized

    data
  end

  defp serialize_binary(data, padding \\ <<0>>) do
    if Integer.is_odd(byte_size(data)) do
      data <> padding
    else
      data
    end
  end

  defp serialize_pixel_data(data, endianness: endianness, explicit: _explicit) do
    # TODO: probably distinction between native and encapsulated pixel data should be more explicit
    if length(data) == 1 do
      serialize_binary(Enum.at(data, 0))
    else
      data_element_tag = serialize_u16(0xFFFE, endianness) <> serialize_u16(0xE000, endianness)

      frame_data =
        data
        |> Enum.map(fn frame ->
          data_element_tag <> serialize_u32(byte_size(frame), endianness) <> frame
        end)
        |> Enum.into(<<>>)

      seq_delimination =
        serialize_u16(0xFFFE, endianness) <>
          serialize_u16(0xE0DD, endianness) <> serialize_u32(0, endianness)

      frame_data <> seq_delimination
    end
  end

  defp serialize_sequence_item(
         data_set,
         [endianness: endianness, explicit: _explicit] = serialization_options
       ) do
    data_set_serialized = serialize(data_set, serialization_options)
    item_length = serialize_u32(byte_size(data_set_serialized), endianness)
    item_delim_group = serialize_u16(0xFFFE, endianness)
    item_delim_element = serialize_u16(0xE000, endianness)
    item_delim_group <> item_delim_element <> item_length <> data_set_serialized
  end

  defp serialize_sequence(
         datasets,
         serialization_options
       ) do
    ds_ser =
      datasets |> Enum.map(&serialize_sequence_item(&1, serialization_options)) |> Enum.join(<<>>)

    # this is not necessary when explicit length is known
    # seq_delim_group = serialize_u16(0xFFFE, endianness)
    # seq_delim_element = serialize_u16(0xE0DD, endianness)
    # seq_delim_item = seq_delim_group <> seq_delim_element <> <<0::32>>
    # ds_ser <> seq_delim_item

    ds_ser
  end

  @doc """
  Serializes `data_element` according to the given `serialization_options`.

  Returns the serialized element as binary string.
  """
  @spec serialize_data_element(DataElement.t(), serialization_options()) :: binary()
  def serialize_data_element(data_element, endianness: endianness, explicit: explicit) do
    group = serialize_u16(data_element.group_number, endianness)
    element = serialize_u16(data_element.element_number, endianness)
    is_pixel_data = data_element.group_number == 0x7FE0 and data_element.element_number == 0x0010

    value =
      case data_element.vr do
        :US ->
          data_element.values |> Enum.map(&serialize_u16(&1, endianness)) |> Enum.join()

        :SS ->
          data_element.values |> Enum.map(&serialize_s16(&1, endianness)) |> Enum.join()

        :UL ->
          data_element.values |> Enum.map(&serialize_u32(&1, endianness)) |> Enum.join()

        :SL ->
          data_element.values |> Enum.map(&serialize_s32(&1, endianness)) |> Enum.join()

        :UV ->
          data_element.values |> Enum.map(&serialize_u64(&1, endianness)) |> Enum.join()

        :SV ->
          data_element.values |> Enum.map(&serialize_s64(&1, endianness)) |> Enum.join()

        :FL ->
          data_element.values |> Enum.map(&serialize_f32(&1, endianness)) |> Enum.join()

        :FD ->
          data_element.values |> Enum.map(&serialize_f64(&1, endianness)) |> Enum.join()

        :AT ->
          data_element.values |> Enum.map(&serialize_at(&1, endianness)) |> Enum.join()

        :UN ->
          # unknown VRs do not get padded to even length
          data_element.values |> Enum.join()

        :SQ ->
          serialize_sequence(data_element.values, endianness: endianness, explicit: explicit)

        :OB ->
          if is_pixel_data do
            serialize_pixel_data(data_element.values, endianness: endianness, explicit: explicit)
          else
            data_element.values |> Enum.join() |> serialize_binary()
          end

        # TODO: list of binary elements should be in one place
        vr when vr in [:OD, :OF, :OL, :OV, :OW, :UI] ->
          data_element.values |> Enum.join() |> serialize_binary()

        vr
        when vr in [
               :AE,
               :AS,
               :CS,
               :DA,
               :DS,
               :DT,
               :IS,
               :LO,
               :LT,
               :PN,
               :SH,
               :ST,
               :TM,
               :UC,
               :UT,
               :UR
             ] ->
          data_element.values |> Enum.join("\\") |> serialize_binary(" ")
      end

    data_length = if(is_pixel_data, do: 0xFFFFFFFF, else: byte_size(value))

    if explicit do
      if is_long_data_element(data_element.vr) do
        value_length = serialize_u32(data_length, endianness)
        group <> element <> to_string(data_element.vr) <> <<0, 0>> <> value_length <> value
      else
        value_length = serialize_u16(data_length, endianness)
        group <> element <> to_string(data_element.vr) <> value_length <> value
      end
    else
      value_length = serialize_u32(data_length, endianness)
      group <> element <> value_length <> value
    end
  end

  @doc """
  Serializes `data_set` according to the given `serialization_options`.

  Returns the serialized data set as binary.

  This function serializes only the data elements. Use `BinaryFormat.to_file_data/2`
  to generate full "part 10" DICOM file data including header and meta data.
  """
  @spec serialize(DataSet.t(), serialization_options()) :: binary()
  def serialize(data_set, serialization_options) do
    serialized =
      data_set
      |> Enum.sort(fn {tag1, _el1}, {tag2, _el2} -> tag1 < tag2 end)
      |> Enum.map(fn {_tag, el} -> serialize_data_element(el, serialization_options) end)
      |> Enum.into(<<>>)

    serialized
  end
end
