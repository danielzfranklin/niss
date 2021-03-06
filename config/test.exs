import Config

# Only in tests, remove the complexity from the password hashing algorithm
config :bcrypt_elixir, :log_rounds, 1

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :niss, Niss.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "niss_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :niss, NissWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "FYleZ02fuvqU2BLJu+qCPms9yI+QIb98iTftdsKlN33YQP2PdfuPA0q524rTq4EG",
  server: false

# In test we don't send emails.
config :niss, Niss.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime

possessions_img_dir = ".test_possession_img_dir"
File.mkdir_p!(possessions_img_dir)
config :niss, Niss.Possessions, image_dir: possessions_img_dir
