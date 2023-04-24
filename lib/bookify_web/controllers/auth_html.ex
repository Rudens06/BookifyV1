defmodule BookifyWeb.AuthHTML do
  use BookifyWeb, :html
  import Phoenix.HTML.Form
  import Phoenix.HTML.Link
  import Bookify.ErrorHelpers


  embed_templates "auth_html/*"
end
