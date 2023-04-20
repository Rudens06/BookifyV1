defmodule Bookify.Repo.Migrations.RemoveBookReferenceFormList do
  use Ecto.Migration

  def change do
    alter table(:lists) do
      remove :book_id
    end
  end
end
