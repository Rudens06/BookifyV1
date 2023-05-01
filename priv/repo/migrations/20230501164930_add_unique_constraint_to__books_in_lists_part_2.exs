defmodule Bookify.Repo.Migrations.AddUniqueConstraintTo_BooksInListsPart2 do
  use Ecto.Migration

  def change do
    create unique_index(:books_in_lists, [:list_id, :book_id], name: :unique_primary_key)
  end
end
