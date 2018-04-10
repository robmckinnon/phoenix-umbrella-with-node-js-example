# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :my_app_web,
  namespace: MyAppWeb

# Configures the endpoint
config :my_app_web, MyAppWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "1tJZ9JOXleRnfbRPVCi9M54wYb2gOFkU/ywqMn+2JStPm07tjSxRmJ2bOIx2G77Y",
  render_errors: [view: MyAppWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: MyAppWeb.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :my_app_web, :generators,
  context_app: :my_app

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
