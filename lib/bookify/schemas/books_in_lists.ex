defmodule Bookify.BooksInLists do
  use Ecto.Schema
  import Ecto.Changeset
  alias Bookify.Book
  alias Bookify.List

  @primary_key false
  @foreign_key_type :integer
  schema "books_in_lists" do
    belongs_to :book, Book
    belongs_to :list, List
    timestamps(updated_at: false)
  end

  def changeset(review, params \\ %{}) do
    review
    |> cast(params, [])
    |> validate_required([:book, :list])
  end
end
