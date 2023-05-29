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
        limit: ^amount,
        select: [b, avg(r.rating)]
      )
  end

  def books_w_avg_reviews_query() do
    from(
        b in Book,
        inner_join: r in Review,
        on: b.id == r.book_id,
        preload: [:author],
        order_by: [desc: avg(r.rating)],
        group_by: b.id,
        select: [b, avg(r.rating)]
      )
  end

  def book_w_avg_review_query(book_id) do
    from(
        b in Book,
        inner_join: r in Review,
        on: b.id == r.book_id,
        where: b.id == ^book_id,
        preload: [:author],
        group_by: b.id,
        select: [b, avg(r.rating)]
      )
  end
end
