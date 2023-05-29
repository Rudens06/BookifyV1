defmodule Bookify.Repo.Migrations.RemoveRatingConstraint do
  use Ecto.Migration

  def change do
    drop constraint(:reviews, "rating_must_be_from_0_and_10")
  end
end
