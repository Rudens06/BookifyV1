defmodule Bookify.Repo.Migrations.RemoveUniqueConstraint_BooksInLists do
  use Ecto.Migration

  def change do
    drop index(:books_in_lists, [:list_id, :book_id], name: :uniqe_primary_key)
  end
end
