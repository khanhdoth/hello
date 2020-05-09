# In this file, we load production configuration and secrets
# from environment variables. You can also hardcode secrets,
# although such is generally not recommended and you have to
# remember to add this file to your .gitignore.
use Mix.Config

config :hello, Hello.Repo,
  username: "postgres",
  password: "postgres",
  database: "hello_prod",
  socket_dir: "/cloudsql/dev-sulof-com:us-central1:hellodb",
  pool_size: 15

config :hello, HelloWeb.Endpoint,
  http: [
    port: String.to_integer(System.get_env("PORT") || "4000"),
    transport_options: [socket_opts: [:inet6]]
  ],
  secret_key_base: "q7mzhcXKlBqbf2ch8pI0Sz/21acW09nDGdSevHDYsOwEYbaacQTppTex7HdOfN7x"

# ## Using releases (Elixir v1.9+)
#
# If you are doing OTP releases, you need to instruct Phoenix
# to start each relevant endpoint:
#
#     config :hello, HelloWeb.Endpoint, server: true
#
# Then you can assemble a release by calling `mix release`.
# See `mix help release` for more information.
