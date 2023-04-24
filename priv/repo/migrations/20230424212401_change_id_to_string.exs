defmodule Bookify.Repo.Migrations.ChangeIdToString do
  use Ecto.Migration

  def change do
    alter table(:reviews, primary_key: false) do
      remove :id
      add :id, :string, primary_key: true
    end
  end
end
