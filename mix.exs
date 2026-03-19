defmodule Dicom.MixProject do
  use Mix.Project

  def project do
    [
      app: :dicom_ex,
      version: "0.3.0",
      elixir: "~> 1.18",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      name: "Dicom.ex",
      description: "A pure Elixir DICOM library supporting dataset and network functionality.",
      source_url: "https://github.com/jjedele/dicom.ex",
      docs: &docs/0,
      package: package()
    ]
  end

  def application do
    [
      extra_applications: [:logger, :xmerl, :ssl, :inets]
    ]
  end

  defp deps do
    [
      {:ex_doc, "~> 0.36", only: :dev, runtime: false}
    ]
  end

  defp docs do
    [
      extras: ["README.md"],
      main: "readme"
    ]
  end

  defp package() do
    [
      name: "dicom_ex",
      licenses: ["Apache-2.0"],
      links: %{GitHub: "https://github.com/jjedele/dicom.ex"}
    ]
  end
end
