# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :reddit,
  ecto_repos: [Reddit.Repo]

# Configures the endpoint
config :reddit, RedditWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "atg8B7jinhPbfruL4y+oFIOX2ja86f1S8BZgW9nchAMkg3rLWuNdSPKYyenNSxMw",
  render_errors: [view: RedditWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Reddit.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"