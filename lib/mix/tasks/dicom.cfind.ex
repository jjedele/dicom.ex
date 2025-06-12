defmodule Mix.Tasks.Dicom.Cfind.Test do
    @moduledoc """
    Simple task to perform a Study Root C-FIND query using `DicomNet.SCU`.

    The task accepts optional command line options:

      mix dicom.cfind.test [--host HOST] [--port PORT] [--called AE] [--calling AE]

    Defaults are host `127.0.0.1`, port `4242`, called AE `TEST`, and calling AE `ME`.
    """
    use Mix.Task

    @shortdoc "Run a C-FIND query against a remote SCP"

    @impl Mix.Task
    def run(args) do
          {opts, _rest, _invalid} =
                  OptionParser.parse(args,
                            switches: [host: :string, port: :integer, called: :string, calling: :string]
                          )

          host = opts[:host] || "127.0.0.1"
          port = opts[:port] || 104
          called = opts[:called] || "SCPAET"
          calling = opts[:calling] || "ME"

          identifier =
                  Dicom.DataSet.from_keyword_list(
                            QueryRetrieveLevel: "STUDY",
                            PatientName: "D*",
                            StudyDate: ""
                          )

          case DicomNet.SCU.cfind(host, port, called, calling,
                       "1.2.840.10008.5.1.4.1.2.2.1", identifier) do
                  {:ok, results} ->
                       IO.inspect(results)
#                      Enum.each(results, fn ds ->
#                                  IO.inspect(ds, label: "C-FIND")
#                                end)

                    {:error, reason} ->
                      Mix.shell().error("C-FIND failed: #{inspect(reason)}")
                  end
        end
end
