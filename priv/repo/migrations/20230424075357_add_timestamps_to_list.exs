defmodule Bookify.Repo.Migrations.AddTimestampsToList do
  use Ecto.Migration

  def change do
    alter table(:lists) do
      timestamps()
    end
  end
end
