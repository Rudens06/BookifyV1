defmodule Bookify.Repo.Migrations.AddForeignKeyConstraints do
  use Ecto.Migration

  def change do
    alter table(:books) do
      add :author_id, references(:authors, type: :string, on_delete: :delete_all)
    end

    alter table(:lists) do
      add :user_id, references(:users, type: :string, on_delete: :delete_all)
    end

    alter table(:books_in_lists) do
      add :list_id, references(:lists, type: :string, on_delete: :delete_all),
      primary_key: true
      add :book_id, references(:books, type: :string, on_delete: :delete_all),
      primary_key: true
    end

    alter table(:reviews) do
      add :user_id, references(:users, type: :string, on_delete: :delete_all)
      add :book_id, references(:books, type: :string, on_delete: :delete_all)
    end
  end
end
