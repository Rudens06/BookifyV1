defmodule Bookify.BooksInLists do
  use Ecto.Schema
  import Ecto.Changeset
  alias Bookify.Book
  alias Bookify.List

  @primary_key false
  @foreign_key_type :string
  schema "books_in_lists" do
    belongs_to :book, Book, primary_key: true
    belongs_to :list, List, primary_key: true
    timestamps(updated_at: false)
  end

  def changeset(books_in_lists, params \\ %{}) do
    books_in_lists
    |> cast(params, [])
    |> unique_constraint(:no_duplicate_books_in_list, name: :books_in_lists_pkey)
  end
end
