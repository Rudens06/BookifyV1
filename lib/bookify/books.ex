defmodule Bookify.Books do
  alias Bookify.Repo
  alias Bookify.Book

  def list_all() do
    Repo.all(Book)
  end

  def get_by_id!(book_id) do
    Repo.get!(Book, book_id)
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
end
