defmodule CryptoWatcher.Repo do
  use Ecto.Repo,
    otp_app: :crypto_watcher,
    adapter: Ecto.Adapters.Postgres
end
