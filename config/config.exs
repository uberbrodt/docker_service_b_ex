# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :docker_service_b_ex,
  ecto_repos: [DockerServiceBEx.Repo]

# Configures the endpoint
config :docker_service_b_ex, DockerServiceBExWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "8ntbRe24RQmr8wJImHregHy+qHuq3bD1wlM6X+SBKR9JREXfGTMIJ5eyd+3sPCPc",
  render_errors: [view: DockerServiceBExWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: DockerServiceBEx.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
