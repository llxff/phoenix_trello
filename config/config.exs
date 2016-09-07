# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenix_trello,
  ecto_repos: [PhoenixTrello.Repo]

# Configures the endpoint
config :phoenix_trello, PhoenixTrello.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "d+XuQoKaDd4poqV8RhjNcuJ4Ipu1SUw/GknN9iKkzmLSA7C+s4nyCHFgsAz4qC2b",
  render_errors: [view: PhoenixTrello.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoenixTrello.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :guardian, Guardian do
  issuer: "PhoenixTrello",
  ttl: { 3, :days },
  verify_issuer: true,
  secret_key: "589e038a2d32783e9c5c177b435f5f7dab9d23cb28f4d4cb2222286a295371bd",
  serializer: PhoenixTrello.GuardianSerialzier

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
