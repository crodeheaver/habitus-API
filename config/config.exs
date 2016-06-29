# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :habitus,
  ecto_repos: [Habitus.Repo]

# Configures the endpoint
config :habitus, Habitus.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "/aeXhKHDUSgnksMD5qG5GiYwFpnAaz+WBxw4XC3N9F+04v7nYBSgTSbRou/n54Or",
  render_errors: [view: Habitus.ErrorView, accepts: ~w(json)],
  pubsub: [name: Habitus.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
