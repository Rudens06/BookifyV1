defmodule BookifyWeb.AuthorHTML do
  use BookifyWeb, :html
  import Phoenix.HTML.Form
  import Phoenix.HTML.Link
  import Bookify.ErrorHelpers
  alias BookifyWeb.Plugs.RequireAdmin
  import Bookify.UserHelpers


  embed_templates "author_html/*"
end
