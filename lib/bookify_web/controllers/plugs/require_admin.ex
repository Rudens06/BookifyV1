defmodule BookifyWeb.Plugs.RequireAdmin do
  import Plug.Conn
  import Phoenix.Controller

  alias BookifyWeb.Router.Helpers

  def init(_params) do
  end

  def call(conn, _params) do
    if user_is_admin?(conn.assigns.current_user) do
      conn
    else
      conn
      |> put_flash(:error, "Not Allowed")
      |> redirect(to: Helpers.book_path(conn, :index))
      |> halt()
    end
  end

  def user_is_admin?(nil), do: false
  def user_is_admin?(user) do
    "admin" in user.roles
  end
end
