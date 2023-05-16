defmodule BookifyWeb.AdminHTML do
  use BookifyWeb, :html

  import Phoenix.HTML.Link
  import BookifyWeb.Helpers.Time

  embed_templates "admin_html/*"
end
