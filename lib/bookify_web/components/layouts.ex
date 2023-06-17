defmodule BookifyWeb.Layouts do
  use BookifyWeb, :html
  import Phoenix.HTML.Link

  def locale_link(locale, language_title) do
    """
    <a href="?locale=#{locale}">#{language_title}</a>
    """
    |> raw()
  end

  embed_templates "layouts/*"
end
