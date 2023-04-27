defmodule BookifyWeb.ListController do
  use BookifyWeb, :controller

  alias Bookify.Repo
  alias Bookify.List
  alias Bookify.Lists

  plug BookifyWeb.Plugs.RequireAuth when action in [:index, :show]

  def init(conn, _params) do
    conn
  end

  def index(conn, _params) do
    lists = Lists.get_lists_by_user_id(conn.assigns.current_user.id)

    conn
    |> assign(:lists, lists)
    |> render(:index)
  end

  def show(conn, %{"id" => book_id}) do
    book = Books.get_by_id!(book_id)
    conn
    |> assign(:page_title, "Books")
    |> assign(:book, book)
    |> render(:show)
  end

end
