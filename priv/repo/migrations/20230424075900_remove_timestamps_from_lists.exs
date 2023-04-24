defmodule Bookify.Repo.Migrations.RemoveTimestampsFromLists do
  use Ecto.Migration

  def change do
    alter table(:lists) do
      remove :inserted_at
      remove :updated_at
    end
  end
end
