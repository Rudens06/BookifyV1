defmodule Bookify.Repo.Migrations.AddPageCountToBooks do
  use Ecto.Migration

  def change do
    alter table(:books) do
      add :page_count, :integer
    end
  end
end
