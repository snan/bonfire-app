import Config

config :activity_pub, :test_repo, Bonfire.Repo
config :activity_pub, :repo, Bonfire.Repo
config :activity_pub, :endpoint_module, Bonfire.Web.Endpoint

config :activity_pub, :adapter, Bonfire.Federate.ActivityPub.Adapter

config :activity_pub, ecto_repos: [Bonfire.Repo]

config :activity_pub, Oban,
  repo: Bonfire.Repo,
  queues: false

config :activity_pub, :instance,
  federating: false
  # rewrite_policy: [ActivityPub.MRF.SimplePolicy]

config :tesla, adapter: Tesla.Mock

# Print only warnings and errors during test
config :logger, level: :warn

config :activity_pub, ActivityPubWeb.Endpoint,
  http: [port: 4002],
  server: false
