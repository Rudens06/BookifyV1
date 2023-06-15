defmodule Bookify.Repo.Migrations.AddApprovedBoolToReviews do
  use Ecto.Migration

  def change do
    alter table(:reviews) do
      add :approved, :boolean, default: false
    end
  end
end
