defmodule BookifyWeb.Plugs.RequireAuth do
  import Plug.Conn
  import Phoenix.Controller
  import BookifyWeb.Gettext

  alias BookifyWeb.Router.Helpers

  def init(_params) do
  end

  def call(conn, _params) do
    if conn.assigns[:current_user] do
      conn
    else
      conn
      |> put_flash(:error, gettext("You must be logged in"))
      |> redirect(to: Helpers.book_path(conn, :index))
      |> halt()
    end
  end
end
