defmodule BookifyWeb.AccountHTML do
  use BookifyWeb, :html
  import Phoenix.HTML.Form
  import Phoenix.HTML.Link
  import Bookify.ErrorHelpers

  embed_templates "account_html/*"
end
