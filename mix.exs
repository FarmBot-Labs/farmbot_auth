defmodule FarmbotAuth.Mixfile do
  use Mix.Project

  def project do
    [app: :farmbot_auth,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  def application do
    [mod: {FarmbotAuth, []},
     applications: [:logger, :timex, :httpotion, :rsa, :nerves_lib, :poison]]
  end

  defp deps do
    [{:timex, "~> 3.0"},
     {:httpotion, "~> 3.0.0"},
     {:rsa, "~> 0.0.1"},
     {:nerves_lib, github: "nerves-project/nerves_lib"},
     {:poison, "~> 2.0"}]
  end
end
