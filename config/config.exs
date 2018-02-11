# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :procart, ecto_repos: [Procart.Repo]

# Configures the endpoint
config :procart, ProcartWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "7dBnYYabL2jxNkgpHL17izO8P4jY1pRd3l7EK55KtbniidtLC+zctAnFajIgnh5F",
  render_errors: [view: ProcartWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Procart.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
