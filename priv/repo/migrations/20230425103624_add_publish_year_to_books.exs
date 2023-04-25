defmodule Bookify.Repo.Migrations.AddPublishYearToBooks do
  use Ecto.Migration

  def change do
    alter table(:books) do
      add :publish_year, :integer
    end
  end
end
