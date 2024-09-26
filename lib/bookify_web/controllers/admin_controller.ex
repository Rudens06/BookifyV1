defmodule BookifyWeb.AdminController do
  use BookifyWeb, :controller

  import Ecto.Changeset

  alias Bookify.Reviews
  alias Bookify.Accounts
  alias Bookify.Review

  plug BookifyWeb.Plugs.RequireAdmin

  def init(conn) do
    conn
  end

  def reviews(conn, _params) do
    reviews = Reviews.list_reviews([:user, :book])

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

  def approve_review(conn, %{"review_id" => review_id}) do
    Reviews.get_by_id!(review_id)
    |> Review.changeset()
    |> change(approved: true)
    |> Reviews.update()

    reviews(conn, %{})
  end

  def show(conn, %{"id" => user_id}) do
    user = Accounts.get_user_by_id!(user_id, [:reviews])

    conn
    |> assign(:user, user)
    |> put_layout({BookifyWeb.Layouts, :admin})
    |> render(:show)
  end
end
