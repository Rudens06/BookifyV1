defmodule BookifyWeb.BookHTML do
  use BookifyWeb, :html
  import Phoenix.HTML.Form
  import Phoenix.HTML.Link
  import Bookify.ErrorHelpers
  import BookifyWeb.Helpers.User
  import BookifyWeb.Helpers.List
  import BookifyWeb.Helpers.Component
  import BookifyWeb.Helpers.Time
  alias Bookify.Lists
  alias BookifyWeb.Plugs.RequireAdmin


  embed_templates "book_html/*"
end
