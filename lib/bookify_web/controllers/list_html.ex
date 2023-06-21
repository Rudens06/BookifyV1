defmodule BookifyWeb.ListHTML do
  use BookifyWeb, :html
  import Phoenix.HTML.Link
  import BookifyWeb.Helpers.List
  import BookifyWeb.Helpers.Numbers

  embed_templates "list_html/*"
end
