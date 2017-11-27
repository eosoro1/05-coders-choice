# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :hangman_web, HangmanWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "LL/A3gYy/60DexOwBaXri/9MJUfinwJDOkjsRXekB+aUzy8ui95liYXwNJ7gwpJe",
  render_errors: [view: HangmanWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: HangmanWeb.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

#config :hangman, Hangman.Repo,
#      adapter: Ecto.Adapters.Postgres,
#      database: "hangaman",
#      username: "postgres",
#      password: "postgres"

#  config :hangman, ecto_repos: [Hangman.Repo]
