defmodule BookifyWeb.BookHTML do
  use BookifyWeb, :html
  import Phoenix.HTML.Form
  import Phoenix.HTML.Link
  import Bookify.ErrorHelpers
  import Bookify.UserHelpers
  alias BookifyWeb.Plugs.RequireAdmin


  embed_templates "book_html/*"
end
