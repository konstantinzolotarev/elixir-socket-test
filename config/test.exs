use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :dubtrack_ws_elixir, DubtrackWsElixir.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :dubtrack_ws_elixir, DubtrackWsElixir.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "",
  database: "dubtrack_ws_elixir_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
