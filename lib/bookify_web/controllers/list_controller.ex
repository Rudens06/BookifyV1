defmodule BookifyWeb.ListController do
  use BookifyWeb, :controller

  import BookifyWeb.Helpers.User
  import BookifyWeb.Helpers.List
  import Ecto.Changeset

  alias Bookify.Lists.ListQuery
  alias Bookify.Repo
  alias Bookify.Lists
  alias Bookify.Book
  alias Bookify.Books
  alias Bookify.BooksInLists

  plug BookifyWeb.Plugs.RequireAuth when action in [:index, :show]

  def init(conn, _params) do
    conn
  end

  def index(conn, _params) do
    lists = Lists.get_lists_by_user_id(current_user(conn).id)

    conn
    |> assign(:lists, lists)
    |> render(:index)
  end

  def show(conn, %{"id" => book_id}) do
    book = Books.get_by_id!(book_id)

    conn
    |> assign(:page_title, gettext("Books"))
    |> assign(:book, book)
    |> render(:show)
  end

  def add_book_to_list(conn, %{"type" => list_type, "id" => book_id}) do
    list = Repo.one(ListQuery.list_by_user_id_and_type(current_user(conn).id, list_type))
    book = Books.get_by_id!(book_id)

    changeset =
      BooksInLists.changeset(%BooksInLists{})
      |> change(book_id: book_id, list_id: list.id)

    case Repo.insert(changeset) do
      {:ok, _BooksInLists} ->
        conn
        |> put_flash(
          :info,
          gettext("Book added to %{list}", list: convert_to_readable(list_type))
        )
        |> redirect(to: Routes.list_path(conn, :index))

      {:error, _changeset} ->
        conn
        |> redirect(to: Routes.book_path(conn, :show, Book.slug_with_id(book)))
        |> put_flash(:error, gettext("Something went wrong"))
    end
  end

  def remove_book_from_list(conn, %{"type" => list_type, "id" => book_id}) do
    list = Repo.one(ListQuery.list_by_user_id_and_type(current_user(conn).id, list_type))
    book_in_list = Repo.one(ListQuery.book_in_list_query(list.id, book_id))
    book = Books.get_by_id!(book_id)

    case Repo.delete(book_in_list) do
      {:ok, _BooksInLists} ->
        conn
        |> put_flash(
          :info,
          gettext("Book deleted from %{list}", list: convert_to_readable(list_type))
        )
        |> redirect(to: Routes.list_path(conn, :index))

      {:error, _changeset} ->
        conn
        |> put_flash(:error, gettext("Something went wrong"))
        |> redirect(to: Routes.book_path(conn, :show, Book.slug_with_id(book)))
    end
  end
end
