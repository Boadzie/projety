defmodule Projety.Repo do
  use Ecto.Repo,
    otp_app: :projety,
    adapter: Ecto.Adapters.Postgres
end
