defmodule Bookify.Repo.Migrations.ReplaceNameToType_ForList do
  use Ecto.Migration

  def change do
    alter table(:lists) do
      remove :name
      add :type, :string
    end
  end
end
