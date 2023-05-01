defmodule BookifyWeb.UserController do
  use BookifyWeb, :controller

  import BookifyWeb.Helpers.List

  alias Ecto.Multi
  alias Bookify.Repo
  alias Bookify.User
  alias Bookify.List

  def new(conn, _params) do
    changeset = User.changeset(%User{})

    conn
    |> assign(:page_title, "Register")
    |> assign(:changeset, changeset)
    |> render(:new)
  end

  def create(conn, %{"user" => user_params}) do
    multi =
      Multi.new()
      |> Multi.insert(:user, User.registration_changeset(User.new(), user_params))
      |> Multi.run(:reading_list, fn repo, %{user: user} ->
        List.changeset(List.new())
        |> Ecto.Changeset.change(user: user, type: reading_list_type())
        |> repo.insert()
      end)
      |> Multi.run(:want_to_read_list, fn repo, %{user: user} ->
        List.changeset(List.new())
        |> Ecto.Changeset.change(user: user, type: want_to_read_list_type())
        |> repo.insert()
      end)
      |> Multi.run(:has_read_list, fn repo, %{user: user} ->
        List.changeset(List.new())
        |> Ecto.Changeset.change(user: user, type: has_read_list_type())
        |> repo.insert()
      end)

    case Repo.transaction(multi) do
      {:ok, transaction} ->
        conn
        |> put_session(:current_user_id, transaction.user.id)
        |> put_flash(:info, "Signed up successfully")
        |> redirect(to: Routes.book_path(conn, :index))

      {:error, :user, changeset, _} ->
        conn
        |> assign(:changeset, changeset)
        |> render(:new)
    end
  end
end
