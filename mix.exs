defmodule Bittorrent.MixProject do
  use Mix.Project

  def project do
    [
      app: :bittorrent,
      version: "0.1.0",
      elixir: "~> 1.7.2",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Bittorrent.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:bento, "~> 0.9"},
      {:logger_file_backend, "~> 0.0.10", github: "onkel-dirtus/logger_file_backend"},
      {:httpoison, "~> 1.1"},
      {:dialyxir, "~> 0.5", only: [:dev]},
      {:mock, "~> 0.3.2", only: :test}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
    ]
  end
end
