defmodule BookifyWeb.UserHTML do
  use BookifyWeb, :html
  import Phoenix.HTML.Form
  import Bookify.ErrorHelpers


  embed_templates "user_html/*"
end
