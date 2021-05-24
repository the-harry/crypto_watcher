# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :crypto_watcher,
  ecto_repos: [CryptoWatcher.Repo]

# Configures the endpoint
config :crypto_watcher, CryptoWatcherWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "QK6akvYzVQiucWCl12vMwl55I5hGis2ipwGj0vfuf2xdzPFyA8rdbN7fhOpzmFg+",
  render_errors: [view: CryptoWatcherWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: CryptoWatcher.PubSub,
  live_view: [signing_salt: "NSvqpD4N"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
