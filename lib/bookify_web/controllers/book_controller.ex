defmodule BookifyWeb.BookController do
  use BookifyWeb, :controller

  alias Bookify.Repo
  alias Bookify.Book
  alias Bookify.Books
  alias Bookify.Authors
  alias Bookify.Review

  plug(:accepts, ["xml"] when action in [:rss])
  plug(BookifyWeb.Plugs.RequireAdmin when action in [:new, :create, :edit, :update, :delete])

  def init(conn, _params) do
    conn
  end

  def index(conn, params) do
    books = Books.list_all_w_author(params)

    conn
    |> assign(:page_title, gettext("Books"))
    |> assign(:books, books)
    |> render(:index)
  end

  def show(conn, %{"id" => book_slug_with_id}) do
    book_id = book_slug_with_id |> String.split("-") |> List.last()
    book = Books.get_by_id!(book_id)
    review_changeset = Review.changeset(%Review{})

    conn
    |> assign(:review_changeset, review_changeset)
    |> assign(:page_title, gettext("Books"))
    |> assign(:book, book)
    |> render(:show)
  end

  def new(conn, _params) do
    authors = Authors.list_all()
    changeset = Book.changeset(%Book{})

    conn
    |> assign(:page_title, gettext("Add Book"))
    |> assign(:changeset, changeset)
    |> assign(:authors, authors)
    |> render(:new)
  end

  def create(conn, %{"book" => book_params}) do
    book_params = genres_to_list(book_params)
    authors = Authors.list_all()

    changeset =
      Book.new()
      |> Book.changeset(book_params)

    case Books.insert(changeset) do
      {:ok, _topic} ->
        conn
        |> put_flash(:info, gettext("Book Created"))
        |> redirect(to: Routes.book_path(conn, :index))

      {:error, changeset} ->
        conn
        |> assign(:changeset, changeset)
        |> assign(:authors, authors)
        |> render(:new)
    end
  end

  def edit(conn, %{"id" => book_id}) do
    authors = Authors.list_all()
    book = Books.get_by_id!(book_id)
    changeset = Book.changeset(book)

    conn
    |> assign(:page_title, gettext("Edit Book"))
    |> assign(:changeset, changeset)
    |> assign(:book, book)
    |> assign(:authors, authors)
    |> render(:edit)
  end

  def update(conn, %{"book" => book_params, "id" => book_id}) do
    book_params = genres_to_list(book_params)
    authors = Authors.list_all()
    book = Books.get_by_id!(book_id)

    changeset = Book.changeset(book, book_params)

    case Books.update(changeset) do
      {:ok, _topic} ->
        conn
        |> put_flash(:info, gettext("Book Updated Successfully"))
        |> redirect(to: Routes.book_path(conn, :index))

      {:error, changeset} ->
        conn
        |> assign(:changeset, changeset)
        |> assign(:book, book)
        |> assign(:authors, authors)
        |> render(:new)
    end
  end

  def delete(conn, %{"id" => book_id}) do
    Books.get_by_id!(book_id)
    |> Repo.delete!()

    conn
    |> put_flash(:info, gettext("Deleted Successfully"))
    |> redirect(to: Routes.book_path(conn, :index))
  end

  def top_books(conn, _params) do
    books = Books.get_top_books(10)

    conn
    |> assign(:books, books)
    |> render(:top_books)
  end

  def rss(conn, _params) do
    books = Books.list_all_w_author(%{})

    conn
    |> assign(:books, books)
    |> put_view(BookifyWeb.BookXML)
    |> render("rss.xml")
  end

  defp genres_to_list(%{"genre" => ""} = book_params), do: book_params

  defp genres_to_list(%{"genre" => genres} = book_params) do
    genres = String.split(genres, ", ")
    Map.put(book_params, "genre", genres)
  end
end
