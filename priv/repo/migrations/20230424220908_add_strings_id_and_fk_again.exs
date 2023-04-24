defmodule Bookify.Repo.Migrations.AddStringsIdAndFkAgain do
  use Ecto.Migration

  def change do
    alter table(:authors, primary_key: false) do
      remove :id
      add :id, :string, primary_key: true
    end

    alter table(:users, primary_key: false) do
      remove :id
      add :id, :string, primary_key: true
    end

    alter table(:books, primary_key: false) do
      remove :id
      add :id, :string, primary_key: true
    end

    alter table(:lists, primary_key: false) do
      remove :id
      add :id, :string, primary_key: true
    end

    alter table(:books_in_lists, primary_key: false) do
      remove :id
    end
  end
end
