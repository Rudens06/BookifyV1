defmodule Bookify.Repo.Migrations.ReviewRatingToFloat do
  use Ecto.Migration

  def change do
    alter table(:reviews) do
      modify :rating, :float
    end
  end
end
