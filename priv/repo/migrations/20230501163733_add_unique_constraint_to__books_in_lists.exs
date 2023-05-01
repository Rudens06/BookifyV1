defmodule Bookify.Repo.Migrations.AddUniqueConstraintTo_BooksInLists do
  use Ecto.Migration

  def change do
    create unique_index(:books_in_lists, [:list_id, :book_id], name: :uniqe_primary_key)
  end
end
