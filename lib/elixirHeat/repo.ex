defmodule ElixirHeat.Repo do
  use Ecto.Repo,
    otp_app: :elixirHeat,
    adapter: Ecto.Adapters.Postgres
end
