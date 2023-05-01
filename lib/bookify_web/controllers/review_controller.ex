defmodule BookifyWeb.ReviewController do
  use BookifyWeb, :controller

  import BookifyWeb.Helpers.User

  alias Bookify.Repo
  alias Bookify.Accounts
  alias Bookify.Review
  alias Bookify.Reviews

  plug BookifyWeb.Plugs.RequireAuth when action in [:new, :create, :edit, :update, :delete]
  plug :check_review_owner when action in [:update, :edit, :delete]


  def new(conn, _params) do
    changeset = Review.changeset(%Review{})

    conn
    |> assign(:changeset, changeset)
    |> render(:new)
  end

  def create(conn, %{"review" => review_params}) do
    changeset =
      Review.new()
      |> Review.changeset(review_params)
      ## More stuff needed
  end

  def index(conn, _params) do
    render(conn, :index)
  end

  def check_review_owner(conn, _params) do
    %{params: %{"id" => review_id}} = conn

    if Reviews.get_review_by_id!(review_id).user_id == current_user(conn).id.id do
      conn
    else
      conn
      |> put_flash(:error, "Not Allowed")
      |> redirect(to: Routes.book_path(conn, :index))
      |> halt()
    end
  end
end
