defmodule Bookify.Repo.Migrations.CreateBooksInLists do
  use Ecto.Migration

  def change do
    create table(:books_in_lists) do
      add :book_id,
          references(:books, type: :integer, on_delete: :delete_all),
          null: false

      add :list_id,
          references(:lists, type: :integer, on_delete: :delete_all),
          null: false

      timestamps(updated_at: false)
    end
  end
end
