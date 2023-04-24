defmodule BookifyWeb.UserController do
  use BookifyWeb, :controller

  alias Bookify.User
  alias Bookify.Accounts

  def new(conn, _params) do
    changeset = User.changeset(%User{})

    conn
    |> assign(:changeset, changeset)
    |> render(:new)
  end

  def create(conn, %{"user" => user_params}) do
    changeset = User.registration_changeset(%User{}, user_params)
    case Accounts.insert(changeset) do
      {:ok, user} ->
        conn
        |> put_session(:current_user_id, user.id)
        |> put_flash(:info, "Signed up successfully")
        |> redirect(to: Routes.book_path(conn, :index))

      {:error, changeset} ->
        conn
        |> assign(:changeset, changeset)
        |> render(:new)
    end
  end
end
