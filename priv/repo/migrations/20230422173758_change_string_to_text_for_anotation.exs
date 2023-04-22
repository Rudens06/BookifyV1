defmodule Bookify.Repo.Migrations.ChangeStringToTextForAnotation do
  use Ecto.Migration

  def change do
    alter table(:books) do
      modify :anotation, :text
    end
  end
end
