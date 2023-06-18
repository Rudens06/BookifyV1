defmodule BookifyWeb.AuthorController do
  use BookifyWeb, :controller

  alias Bookify.Repo
  alias Bookify.Author
  alias Bookify.Authors

  plug BookifyWeb.Plugs.RequireAdmin when action in [:new, :create, :edit, :update, :delete]

  def index(conn, params) do
    authors = Authors.list_all(params)

    conn
    |> assign(:page_title, gettext("Authors"))
    |> assign(:authors, authors)
    |> render(:index)
  end

  def show(conn, %{"id" => author_id}) do
    author =
      Repo.get!(Author, author_id)
      |> Repo.preload(:books)

    conn
    |> assign(:page_title, gettext("Authors"))
    |> assign(:author, author)
    |> render(:show)
  end

  def new(conn, _params) do
    changeset = Author.changeset(%Author{})

    conn
    |> assign(:page_title, gettext("Add Author"))
    |> assign(:changeset, changeset)
    |> render(:new)
  end

  def create(conn, %{"author" => author_params}) do
    changeset =
      Author.new()
      |> Author.changeset(author_params)

    case Repo.insert(changeset) do
      {:ok, _author} ->
        conn
        |> put_flash(:info, gettext("Author Created"))
        |> redirect(to: Routes.author_path(conn, :index))

      {:error, changeset} ->
        render(conn, :new, changeset: changeset)
    end
  end

  def edit(conn, %{"id" => author_id}) do
    author = Repo.get(Author, author_id)
    changeset = Author.changeset(author)

    conn
    |> assign(:page_title, gettext("Edit Author"))
    |> assign(:changeset, changeset)
    |> assign(:author, author)
    |> render(:edit)
  end

  def update(conn, %{"author" => author_params, "id" => author_id}) do
    author = Repo.get(Author, author_id)
    changeset = Author.changeset(author, author_params)

    case Repo.update(changeset) do
      {:ok, _author} ->
        conn
        |> put_flash(:info, gettext("Author Updated Successfully"))
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
    |> Repo.delete!()

    conn
    |> put_flash(:info, gettext("Deleted Successfully"))
    |> redirect(to: Routes.author_path(conn, :index))
  end
end
