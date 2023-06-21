defmodule BookifyWeb.UserHTML do
  use BookifyWeb, :html
  import Phoenix.HTML.Form
  import Phoenix.HTML.Link
  import Bookify.ErrorHelpers

  embed_templates "user_html/*"
end
