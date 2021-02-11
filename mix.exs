defmodule CalDAVClient.MixProject do
  use Mix.Project

  def project do
    [
      app: :caldav_client,
      version: "1.0.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      deps: deps(),

      # Docs
      source_url: "https://github.com/software-mansion-labs/elixir-caldav-client",
      homepage_url: "https://hexdocs.pm/caldav_client/readme.html",
      docs: [
        extras: ["README.md", "LICENSE"],
        nest_modules_by_prefix: [
          CalDAVClient.Tesla,
          CalDAVClient.XML
        ]
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:tesla, "~> 1.4.0"},
      {:hackney, "~> 1.16.0"},
      {:xml_builder, "~> 2.1"},
      {:sweet_xml, "~> 0.6.5"},
      {:timex, "~> 3.6"},
      {:ex_parameterized, "~> 1.3.7", only: :test},
      {:ex_doc, "~> 0.23", only: :dev, runtime: false}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end

  defp description() do
    "CalDAV client library with support for recurrence expansion, time zones, and ETags."
  end

  defp package() do
    [
      maintainers: ["Software Mansion"],
      licenses: ["Apache-2.0"],
      files: ~w(lib .formatter.exs mix.exs README* LICENSE*),
      links: %{"GitHub" => "https://github.com/software-mansion-labs/elixir-caldav-client"}
    ]
  end
end
