defmodule Bookify.Repo.Migrations.AddRatingConstraintMax5 do
  use Ecto.Migration

  def change do
    create constraint("reviews", :rating_must_be_from_0_to_5, check: "rating > 0 and rating <= 5")
  end
end
