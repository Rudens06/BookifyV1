defmodule BookifyWeb.BookXML do
  use BookifyWeb, :html

  def render("rss.xml", assigns) do
    """
    <?xml version="1.0" encoding="UTF-8" ?>
    <rss version="2.0">
      <channel>
        <title>Book feed</title>
        <link>#{url(~p"/rss")}</link>
        <description>List of latest books</description>
        #{render_items(assigns.books)}
      </channel>
    </rss>
    """
  end

  defp render_items(books) do
    Enum.map(books, fn book ->
      """
      <item>
        <title>#{book.title}</title>
        <link>#{url(~p"/books/#{book}")}</link>
        <description>#{book.anotation}</description>
      </item>
      """
    end)
    |> Enum.join()
  end
end
