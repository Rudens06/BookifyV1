defmodule BookifyWeb.ListHTML do
  use BookifyWeb, :html
  import Phoenix.HTML.Link
  import BookifyWeb.Helpers.List

  embed_templates "list_html/*"
end
