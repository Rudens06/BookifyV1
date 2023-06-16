defmodule Bookify.Repo.Migrations.ChangeAnotationAndBioToText do
  use Ecto.Migration

  def change do
    alter table(:authors) do
      modify :bio, :text
    end

    alter table(:books) do
      modify :anotation, :text
    end

  end
end
