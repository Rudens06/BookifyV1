defmodule Bookify.Books do
  import Ecto.Query
  alias Bookify.Repo
  alias Bookify.Book
  alias Bookify.Review
  alias Bookify.Books.BookQuery

  def list_all() do
    Repo.all(Book)
  end

  def list_all_w_author(params) do
    search_term = get_in(params, ["query"])

    Book
    |> search(search_term)
    |> Repo.all()
    |> Repo.preload(:author)
  end

  def list_all_w_author(params) do
    Book
    |> Repo.preload(:author)
  end

  def get_by_id!(book_id) do
    reviews_query = from r in Review, order_by: [desc: r.inserted_at]

    Repo.get!(Book, book_id)
    |> Repo.preload(:author)
    |> Repo.preload(reviews: reviews_query)
    |> Repo.preload(reviews: [:user])
  end

  def insert(book) do
    Repo.insert(book)
  end

  def update(book) do
    Repo.update(book)
  end

  def delete_by_id!(book_id) do
    Repo.get(Book, book_id)
    |> Repo.delete!
  end

  def get_top_books(amount) do
    books = Repo.all(BookQuery.top_books_query(amount))
    Enum.map(books, fn [%Book{} = book, avg_rating] ->
      %Book{book | avg_rating: avg_rating}
    end)
  end

  def update_avg_rating(book_id) do
    [book, avg_rating] = Repo.one(BookQuery.book_w_avg_review_query(book_id))

    Book.update_avg_rating_changeset(book, avg_rating)
    |> Repo.update()
  end

  def search(query, search_term) do
    wildcard_search = "%#{search_term}%"

    from book in query,
    join: author in assoc(book, :author),
    where: ilike(book.title, ^wildcard_search),
    or_where: ilike(book.anotation, ^wildcard_search),
    or_where: ilike(author.name, ^wildcard_search)
  end
end
