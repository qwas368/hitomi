defmodule Hitomi.Service.Mixfile do
  use Mix.Project

  def project do
    [
      app: :service,
      version: "0.1.0",
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Hitomi.Service.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:repo, in_umbrella: true},
      {:core, in_umbrella: true},
      {:models, in_umbrella: true}
    ]
  end
end
