# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :crowdfundr_web,
  namespace: CrowdfundrWeb

# Configures the endpoint
config :crowdfundr_web, CrowdfundrWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "lGLnvoLQcglXVj/r6NZPwg4cahUhPLGaDKpGTjtBB2BuqPIv5TqETHb/e3TI+Cnj",
  render_errors: [view: CrowdfundrWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: CrowdfundrWeb.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :crowdfundr_web, :generators,
  context_app: :crowdfundr,
  binary_id: true

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
