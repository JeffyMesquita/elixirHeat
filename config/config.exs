# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :elixirHeat,
  ecto_repos: [ElixirHeat.Repo]

# Configures the endpoint
config :elixirHeat, ElixirHeatWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "W0x+PaINTFreSDWCPZK2J/moEptFtuCrMDmwxOX55loWomjAudh8A6kijtLa1eXD",
  render_errors: [view: ElixirHeatWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: ElixirHeat.PubSub,
  live_view: [signing_salt: "ChlCeJGT"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
