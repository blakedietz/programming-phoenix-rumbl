defmodule RubmlWeb.UserController do
  use RumblWeb, :controller

  alias Rumbl.Accounts

  @spec index(Plug.Conn.t(), any) :: Plug.Conn.t()
  def index(conn, _params) do
    users = Accounts.list_users()
    render(conn, "index.html", users: users)
  end
end
