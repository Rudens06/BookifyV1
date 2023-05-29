defmodule Bookify.Repo.Migrations.AddAvgRatingFieldToBooks do
  use Ecto.Migration

  def change do
    alter table(:books) do
      add :avg_rating, :float
    end
  end
end
