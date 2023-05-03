defmodule Bookify.Repo.Migrations.AddReviewTitle do
  use Ecto.Migration

  def change do
    alter table(:reviews) do
      add :title, :string
    end
  end
end
