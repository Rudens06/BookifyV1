defmodule BookifyWeb.AuthController do
  use BookifyWeb, :controller
  alias Bookify.Accounts
  alias Bookify.User

  def new(conn, _params) do
    render(conn, :new)
  end

  def signin(conn, %{"session" => auth_params}) do
    user = Accounts.get_user_by_email(auth_params["email"])

    case Bcrypt.check_pass(user, auth_params["password"], [hash_key: :hashed_password]) do
      {:ok, user} ->
        conn
        |> put_flash(:info, "Signed in successfully!")
        |> put_session(:current_user_id, user.id)
        |> redirect(to: Routes.book_path(conn, :index))
      {:error, _} ->
        conn
        |> put_flash(:error, "There was a problem with your email/password")
        |> render(:new)
    end
  end

  def signout(conn, _params) do
    conn
    |> delete_session(:current_user_id)
    |> put_flash(:info, "Signed out successfully!")
    |> redirect(to: Routes.book_path(conn, :index))
  end
end
