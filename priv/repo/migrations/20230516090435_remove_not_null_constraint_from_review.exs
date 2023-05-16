defmodule Bookify.Repo.Migrations.RemoveNotNullConstraintFromReview do
  use Ecto.Migration

  def change do
    alter table(:reviews) do
      modify :review, :text, null: true
    end
  end
end
