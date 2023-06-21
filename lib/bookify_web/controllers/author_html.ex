defmodule BookifyWeb.AuthorHTML do
  use BookifyWeb, :html
  import Phoenix.HTML.Form
  import Phoenix.HTML.Link
  import Bookify.ErrorHelpers
  import BookifyWeb.Helpers.Numbers
  alias BookifyWeb.Plugs.RequireAdmin
  import BookifyWeb.Helpers.User


  embed_templates "author_html/*"
end
