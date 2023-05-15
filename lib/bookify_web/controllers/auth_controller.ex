defmodule BookifyWeb.AuthController do
  use BookifyWeb, :controller

  alias Bookify.Repo
  alias Bookify.Accounts
  alias Bookify.User

  def new(conn, _params) do
    changeset = User.sign_in_changeset(%User{})
    conn
    |> assign(:page_title, "Sign In")
    |> assign(:changeset, changeset)
    |> render(:new)
  end

  def signin(conn, %{"session" => auth_params}) do
    changeset = User.sign_in_changeset(%User{})
    user = Accounts.get_user_by_email(auth_params["email"])
    update_changeset = User.last_login_changeset(user)

    case Bcrypt.check_pass(user, auth_params["password"], [hash_key: :hashed_password]) do
      {:ok, user} ->
        Repo.update(update_changeset)
        conn
        |> put_flash(:info, "Signed in successfully!")
        |> put_session(:current_user_id, user.id)
        |> redirect(to: Routes.book_path(conn, :index))
      {:error, _} ->
        conn
        |> assign(:changeset, changeset)
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
