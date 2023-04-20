defmodule Bookify.Repo.Migrations.CreateLists do
  use Ecto.Migration

  def change do
    create table(:lists) do
      add :book_id,
          references(:books, type: :integer, on_delete: :delete_all),
          null: false

      add :user_id,
          references(:users, type: :integer, on_delete: :delete_all),
          null: false

      add :name,
          :string,
          null: false
    end
  end
end
