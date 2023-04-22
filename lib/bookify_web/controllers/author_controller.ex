defmodule BookifyWeb.AuthorController do
  use BookifyWeb, :controller

  alias Bookify.Repo
  alias Bookify.Author

  # plug BookifyWeb.Plugs.RequireAuth when action in [:new, :create, :edit, :update, :delete]
  # plug :check_topic_owner when action in [:update, :edit, :delete]


  def index(conn, _params) do
    authors = Repo.all(Author)
    conn
    |>assign(:authors, authors)
    |>render(:index)
  end

  def show(conn, %{"id" => author_id}) do
    author = Repo.get!(Author, author_id)
    conn
    |> assign(:author, author)
    |> render(:show)

  end

  def new(conn, _params) do
    changeset = Author.changeset(%Author{}, %{})

      conn
      |> assign(:changeset, changeset)
      |> render(:new)
  end

  def create(conn, %{"author" => author}) do
    changeset = Author.changeset(%Author{}, author)
    case Repo.insert(changeset) do
      {:ok, _topic} ->
        conn
        |> put_flash(:info, "Author Created")
        |> redirect(to: Routes.author_path(conn, :index))
      {:error, changeset} ->
        render(conn, :new, changeset: changeset)
    end
  end

  def edit(conn, %{"id" => author_id}) do
    author = Repo.get(Author, author_id)
    changeset = Author.changeset(author)
    conn
    |> assign(:changeset, changeset)
    |> assign(:author, author)
    |> render(:edit)
  end

  def update(conn, %{"author" => author_params, "id" => author_id}) do
    author = Repo.get(Author, author_id)
    changeset = Author.changeset(author, author_params)

    case Repo.update(changeset) do
      {:ok, _topic} ->
        conn
        |> put_flash(:info, "Author Updated Successfully")
        |> redirect(to: Routes.author_path(conn, :index))
      {:error, changeset} ->
        conn
        |> assign(:author, author)
        |> assign(:changeset, changeset)
        |> render(:edit)
    end
  end

  def delete(conn, %{"id" => author_id}) do
    Repo.get!(Author, author_id)
    |> Repo.delete!

    conn
    |> put_flash(:info, "Deleted Successfully")
    |> redirect(to: Routes.author_path(conn, :index))
  end

  # def check_topic_owner(conn, _params) do
  #   %{params: %{"id" => author_id}} = conn


  #   if Repo.get(author, author_id).user_id == conn.assigns.user.id do
  #     conn
  #   else
  #     conn
  #     |> put_flash(:error, "Not Allowed")
  #     |> redirect(to: Routes.author_path(conn, :index))
  #     |> halt()
  #   end
  # end

end
