defmodule Bookify.Books.BookQuery do
  import Ecto.Query
  alias Bookify.Book
  alias Bookify.Review

  def top_books_query(amount) do
    from(
        b in Book,
        inner_join: r in Review,
        on: b.id == r.book_id,
        preload: [:author],
        order_by: [desc: avg(r.rating)],
        group_by: b.id,
        limit: ^amount
      )
  end
end

# SELECT b.*, AVG(r.rating) as average_rating
# FROM books as b
# INNER JOIN reviews as r ON r.book_id = b.id
# GROUP BY b.id
# ORDER BY average_rating DESC
# LIMIT 5
