defmodule FluxirWeb.UserController do
  use FluxirWeb, :controller

  alias Fluxir.Accounts

  def index(conn, _params) do
    users = Accounts.list_users()
    render(conn, "index.json", users: users)
  end
end
