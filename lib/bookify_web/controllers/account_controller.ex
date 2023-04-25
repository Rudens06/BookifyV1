defmodule BookifyWeb.AccountController do
  use BookifyWeb, :controller

  def index(conn, _params) do
    case get_session(conn, :current_user_id) do
      nil ->
        redirect(conn, to: Routes.user_path(conn, :new))
      _ ->
        render(conn, :index)
    end
  end
end
