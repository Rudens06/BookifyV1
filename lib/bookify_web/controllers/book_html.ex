defmodule BookifyWeb.BookHTML do
  use BookifyWeb, :html
  import Phoenix.HTML.Form
  import Phoenix.HTML.Link
  import Bookify.ErrorHelpers
  import BookifyWeb.Helpers.User
  import BookifyWeb.Helpers.List
  alias Bookify.Lists
  alias BookifyWeb.Plugs.RequireAdmin
  alias Bookify.Reviews


  embed_templates "book_html/*"
end
