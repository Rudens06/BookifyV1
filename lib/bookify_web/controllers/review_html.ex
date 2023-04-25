defmodule BookifyWeb.ReviewHTML do
  use BookifyWeb, :html
  import Phoenix.HTML.Form
  import Phoenix.HTML.Link
  import Bookify.ErrorHelpers
  alias BookifyWeb.Plugs.RequireAdmin


  embed_templates "reveiw_html/*"
end
