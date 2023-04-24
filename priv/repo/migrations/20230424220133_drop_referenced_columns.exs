defmodule Bookify.Repo.Migrations.DropReferencedColumns do
  use Ecto.Migration

  def change do
    alter table(:books) do
      remove :author_id
    end

    alter table(:books_in_lists) do
      remove :list_id
      remove :book_id
    end

    alter table(:lists) do
      remove :user_id
    end

    alter table(:reviews) do
      remove :book_id
      remove :user_id
    end
  end
end
