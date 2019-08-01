defmodule Fluxir.Repo do
  use Ecto.Repo,
    otp_app: :fluxir,
    adapter: Ecto.Adapters.Postgres
end
