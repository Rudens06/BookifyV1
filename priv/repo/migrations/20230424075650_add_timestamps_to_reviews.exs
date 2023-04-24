defmodule Bookify.Repo.Migrations.AddTimestampsToReviews do
  use Ecto.Migration

  def change do
    alter table(:reviews) do
      timestamps()
    end
  end
end
