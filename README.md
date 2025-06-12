# Dicom.ex

Dicom.ex is a Elixir library implementing the [DICOM](https://www.dicomstandard.org/)
standard for data storage and network transfers.

**Attention:** This project is a personal project to
learn Elixir and DICOM internals. It should not be used
in production and absolutely not in clinical contexts.

## Features

* General methods to work with DICOM data sets and elements
* Read/write "part 10" DICOM files ([DICOM Part 3.10](https://dicom.nema.org/medical/dicom/current/output/chtml/part10/chapter_7.html))
* Supports VRs and tag dictionary as of DICOM version 2024d
* Handle C-ECHO, C-FIND and C-STORE network requests ([DICOM Part 3.7](https://dicom.nema.org/medical/dicom/current/output/chtml/part07/PS3.7.html))

## Tools and Examples

### Loading and Displaying DICOM Files

The mix task [dicom.dump](lib/mix/tasks/dicom.dump.ex) contains a minimal example of how to load and display DICOM files.

Usage:

    mix dicom.dump path/to/file.dcm

### Receiving DICOM Network Transfers

The mix task [dicom.scp](lib/mix/tasks/dicom.scp.ex) runs a minimal storage service provider (SCP) capable
of printing and saving received data sets.

Usage:

    mix dicom.scp --port 8104 --print --save ./scp_incoming

## Examples

## DICOM parsing and writing

The following examples shows how to parse and access/write data from/to dicom files.  

### Create and access DICOM data set

```elixir
ds =
  Dicom.DataSet.from_keyword_list(
    SOPInstanceUID: "1.2.3",
    PatientID: "ABC123",
    ImageType: ["Test1", "Test2", "Test3"]
  )

assert Dicom.DataSet.value_for!(ds, :PatientID) == "ABC123"
assert Dicom.DataSet.value_for!(ds, :ImageType, 2) == "Test3"
```

### Read/Write DICOM Data Set From/To File

```elixir
serialized =
  Dicom.BinaryFormat.from_file!("demo.dcm")
  |> Dicom.DataSet.put(:PatientID, :SH, ["ANON123"])
  |> Dicom.DataSet.put(:PatientName, :PN, ["Doe^John"])
  |> Dicom.BinaryFormat.to_file_data()
File.write!("anonymized.dcm", serialized)
```

## DICOM DIMSE Handlers

The following examples show how to create DICOM DIMSE services.  

### Association Validation

This example allows incoming requests pointing to `TEST` AETitle, all other AETitles are rejected.  

To test an _accepting association_ you could run echoscu (from [dcmtk](https://dicom.offis.de/dcmtk.php.en)) this way:  

```
echoscu -d -aec TEST 127.0.0.1 4242
```

To test an _rejecting association_:  

```
echoscu -d -aec OTHERAET 127.0.0.1 4242
```

```elixir
defmodule AssociationExample do
  use Application

  def start(_type, _args) do
    {:ok, endpoint_pid} = GenServer.start_link(
      DicomNet.Endpoint, 
      port: 4242,
      event_handlers: [
        association_validator: &association_handler/1,
      ]
    )

    loop()
    {:ok, endpoint_pid}
  end

  # Without this the server won't keep running
  defp loop() do
    loop()
  end

  defp association_handler(association_data) do
    case association_data.called_ae_title do
      "TEST" ->
        :accept
      _ ->
        {:reject, :dicom_ul_service_user, :called_ae_title_not_recognized}
    end
  end
end
```
### C-FIND SCP

Adding up to the association validation example, we'll add a `cfind` handler:  

```elixir
defmodule CFindSCP do
  use Application

  def start(_type, _args) do
    {:ok, endpoint_pid} = GenServer.start_link(
      DicomNet.Endpoint, 
      port: 4242,
      event_handlers: [
        cfind: &get_responses/1,
        association_validator: &association_handler/1,
      ]
    )

    loop()
    {:ok, endpoint_pid}
  end

  # Without this the server won't keep running
  defp loop() do
    loop()
  end

  defp association_handler(association_data) do
    case association_data.called_ae_title do
      "TEST" ->
        :accept
      _ ->
        {:reject, :dicom_ul_service_user, :called_ae_title_not_recognized}
    end
  end

  defp get_responses(dataset) do
    # Rename tags with atoms
    fields = Enum.map(dataset, fn {k, v} ->
          group = v.group_number
          element = v.element_number
          values = v.values
          case {group, element} do
              {0x0008, 0x0050} -> {:AccessionNumber, values}
              {0x0010, 0x0010} -> {:PatientName, values}
              {0x0010, 0x0020} -> {:PatientID, values}
            _ -> {:Ignore, nil}
          end
        end
    ) 

    # sample study list
    studies = [
      ["PatientName": "Carmack^John", PatientID: "1", AccessionNumber: "A001"],
      ["PatientName": "Kernighan^Brian", PatientID: "2", AccessionNumber: "A002"],
      ["PatientName": "Torvalds^Linus", PatientID: "3", AccessionNumber: "A003"],
      ["PatientName": "Van Rossum^Guido", PatientID: "4", AccessionNumber: "A004"],
      ["PatientName": "Valim^José", PatientID: "5", AccessionNumber: "A005"]
    ]

    # Return the list excluding those fields not present in fields list.
    Stream.map(studies, fn study ->
      Keyword.take(study, Keyword.keys(fields)) 
      |>Dicom.DataSet.from_keyword_list()
    end) 
  end

end
```

### C-STORE SCP

This last example includes all the handlers available at this moment, `association_validator`, `cfind` and `cstore`.  

```elixir
defmodule SCP do
  use Application

  def start(_type, _args) do
    {:ok, endpoint_pid} = GenServer.start_link(
      DicomNet.Endpoint, 
      port: 4242,
      event_handlers: [
        cfind: &get_responses/1,
        cstore: &store_image/1,
        association_validator: &association_handler/1,
      ]
    )

    loop()
    {:ok, endpoint_pid}
  end

  # Without this the server won't keep running
  defp loop() do
    loop()
  end

  defp association_handler(association_data) do
    case association_data.called_ae_title do
      "TEST" ->
        :accept
      _ ->
        {:reject, :dicom_ul_service_user, :called_ae_title_not_recognized}
    end
  end

  defp get_responses(dataset) do
    # Rename tags with atoms
    fields = Enum.map(dataset, fn {k, v} ->
          group = v.group_number
          element = v.element_number
          values = v.values
          case {group, element} do
              {0x0008, 0x0050} -> {:AccessionNumber, values}
              {0x0010, 0x0010} -> {:PatientName, values}
              {0x0010, 0x0020} -> {:PatientID, values}
            _ -> {:Ignore, nil}
          end
        end
    ) 

    # sample study list
    studies = [
      ["PatientName": "Carmack^John", PatientID: "1", AccessionNumber: "A001"],
      ["PatientName": "Kernighan^Brian", PatientID: "2", AccessionNumber: "A002"],
      ["PatientName": "Torvalds^Linus", PatientID: "3", AccessionNumber: "A003"],
      ["PatientName": "Van Rossum^Guido", PatientID: "4", AccessionNumber: "A004"],
      ["PatientName": "Valim^José", PatientID: "5", AccessionNumber: "A005"]
    ]

    # Return the list excluding those fields not present in fields list.
    Stream.map(studies, fn study ->
      Keyword.take(study, Keyword.keys(fields)) 
      |>Dicom.DataSet.from_keyword_list()
    end) 
  end

  defp store_image(data) do
    # just print the incoming dataset
    IO.inspect(data, label: "C-STORE")
  end

end
```

## Dicom SCU

### C-FIND SCU

This snippet demonstrates how to issue a Study Root C-FIND query to a remote SCP.

```elixir
identifier =
  Dicom.DataSet.from_keyword_list(
    QueryRetrieveLevel: "STUDY",
    PatientName: "Doe^John"
  )

{:ok, results} =
  DicomNet.SCU.cfind(
    "127.0.0.1",
    4242,
    "TEST",
    "ME",
    "1.2.840.10008.5.1.4.1.2.2.1",
    identifier
  )

Enum.each(results, fn ds ->
  IO.inspect(ds, label: "C-FIND")
end)
```
