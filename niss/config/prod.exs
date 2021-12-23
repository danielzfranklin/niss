import Config

config :fly_postgres,
  rewrite_db_url: true

config :niss, Niss.Application,
  cluster: true,
  executor: :primary,
  tank_level_monitor: :primary

# Do not print debug messages in production
config :logger, level: :info

# Remember endpoint also configured in config/runtime.exs

config :niss, NissWeb.Endpoint,
  url: [host: "niss.danielzfranklin.org", port: 443],
  force_ssl: [rewrite_on: [:x_forwarded_proto], host: nil],
  cache_static_manifest: "priv/static/cache_manifest.json"
