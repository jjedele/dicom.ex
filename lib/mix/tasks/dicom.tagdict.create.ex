defmodule Mix.Tasks.Dicom.Tagdict.Create do
  @moduledoc """
  Downloads and parses the tag dictionaries and generates a Elixir module.
  """
  use Mix.Task
  import Mix.Generator

  @version "2024d"

  defp download_file(url) do
    {:ok, {_status, _headers, data}} = :httpc.request(url)
    data
  end

  defp match_row([tag_string, name, keyword, vr, vm, notes]) when byte_size(keyword) > 0 do
    [_full_match, group, element] = Regex.run(~r/\((\w{4}),(\w{4})\)/, tag_string)

    vr =
      vr
      |> String.split(" or ")
      |> Enum.at(0)

    vr =
      if Regex.match?(~r/[A-Z]{2}/, vr) do
        String.to_atom(vr)
      else
        :UN
      end

    %{
      group: String.replace(group, "x", "0"),
      element: String.replace(element, "x", "0"),
      name: name,
      keyword: String.to_atom(String.replace(keyword, "\u200B", "")),
      vr: vr,
      vm: vm,
      notes: notes
    }
  end

  defp match_row(_arg), do: nil

  defp extract_text(el) do
    :xmerl_xpath.string(~c"//text()", el)
    |> Enum.map(fn {:xmlText, _parents, _pos, _lang, value, :text} -> value end)
    |> Enum.map(fn value -> List.to_string(value) |> String.trim() end)
    |> Enum.into("")
  end

  defp parse_entry(tr) do
    :xmerl_xpath.string(~c"//td", tr)
    |> Enum.map(&extract_text/1)
    |> match_row()
  end

  defp load_part06_tagdict() do
    url = "https://dicom.nema.org/medical/dicom/#{@version}/source/docbook/part06/part06.xml"
    data = download_file(:binary.bin_to_list(url))

    {xml_doc, _rest} = :xmerl_scan.string(data)
    trs = :xmerl_xpath.string(~c"//tr", xml_doc)

    trs
    |> Enum.map(&parse_entry/1)
    |> Enum.filter(&(!is_nil(&1)))
  end

  defp load_part07_commanddict() do
    url = "https://dicom.nema.org/medical/dicom/#{@version}/source/docbook/part07/part07.xml"
    data = download_file(:binary.bin_to_list(url))

    {xml_doc, _rest} = :xmerl_scan.string(data)
    trs = :xmerl_xpath.string(~c"//table[@label=\'E.1-1\']//tr", xml_doc)

    trs
    |> Enum.map(&parse_entry/1)
    |> Enum.filter(&(!is_nil(&1)))
  end

  defp sorted_tagdict(elements) do
    elements
    |> Enum.group_by(&Map.fetch!(&1, :group))
    |> Enum.map(fn {group, elements} ->
      {group,
       elements
       |> Enum.map(&{Map.fetch!(&1, :element), &1})
       |> Enum.uniq_by(&elem(&1, 0))
       |> Enum.sort_by(&elem(&1, 0))}
    end)
    |> Enum.sort_by(&elem(&1, 0))
  end

  embed_template(:tagdict, """
  defmodule <%= @module_name %> do
    @by_tag %{
      <%= for {group_no, elements} <- @tagdict do %>
      0x<%= group_no %> => %{
        <%= for {element_no, element} <- elements do %>
        0x<%= element_no %> => %{
          keyword: :<%= Map.fetch!(element, :keyword) %>,
          name: "<%= Map.fetch!(element, :name) %>",
          vr: :<%= Map.fetch!(element, :vr) %>,
        },<% end %>
      },<% end %>
    }

    def by_tag(), do: @by_tag
  end
  """)

  def run(_args) do
    :inets.start()
    :ssl.start()

    ds_tagdict = load_part06_tagdict()
    command_tagdict = load_part07_commanddict()
    tagdict = sorted_tagdict(command_tagdict ++ ds_tagdict)

    rendered =
      tagdict_template(
        module_name: "Dicom.TagDict.Dict",
        tagdict: tagdict
      )

    create_file("lib/dicom/tag_dict.dict.ex", rendered)
    "OK"
  end
end
