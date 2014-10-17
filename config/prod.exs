use Mix.Config

# ## SSL Support
#
# To get SSL working, you will need to set:
#
#     https: [port: 443,
#             keyfile: System.get_env("SOME_APP_SSL_KEY_PATH"),
#             certfile: System.get_env("SOME_APP_SSL_CERT_PATH")]
#
# Where those two env variables point to a file on
# disk for the key and cert.

config :phoenix, PhoenixSample.Router,
  url: [host: "example.com"],
  http: [port: System.get_env("PORT")],
  secret_key_base: "nANCNLbL61VE0VBqAXxPVOWkQz2w3rJEnEvX9ac04KMs1oIK64vb9Z8BizUaK2SyKA+GHDP566Z1ySADhmy0Lg=="

config :logger, :console,
  level: :info
