defmodule BookifyWeb.AdminController do
  use BookifyWeb, :controller

  alias Bookify.Repo
  alias Bookify.Book
  alias Bookify.Books
  alias Bookify.Authors
  alias Bookify.Review

  plug BookifyWeb.Plugs.RequireAdmin when action in [:index, :new, :create, :edit, :update, :delete]

  def init(conn, _params) do
    conn
  end

  def index(conn, _params) do
    conn
    |> render(:index, layout: false)
  end
end
