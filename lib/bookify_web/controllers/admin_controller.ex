defmodule BookifyWeb.AdminController do
  use BookifyWeb, :controller

  alias Bookify.Repo
  alias Bookify.Book
  alias Bookify.Books
  alias Bookify.Authors
  alias Bookify.Reviews
  alias Bookify.Accounts

  plug BookifyWeb.Plugs.RequireAdmin

  def init(conn) do
    conn
  end

  def reviews(conn, _params) do
    reviews = Reviews.list_reviews()

    conn
    |> assign(:reviews, reviews)
    |> put_layout({BookifyWeb.Layouts, :admin})
    |> render(:reviews)
  end

  def users(conn, _params) do
    users = Accounts.list_users()

    conn
    |> assign(:users, users)
    |> put_layout({BookifyWeb.Layouts, :admin})
    |> render(:users)
  end

  def show(conn, %{"id" => user_id}) do
    user = Accounts.get_user_by_id_w_preloads(user_id)

    conn
    |> assign(:user, user)
    |> put_layout({BookifyWeb.Layouts, :admin})
    |> render(:show)
  end
end
