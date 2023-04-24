defmodule Bookify.Repo.Migrations.RenameGenreForBook do
  use Ecto.Migration

  def change do
    alter table(:books) do
      remove :genere
      add :genere, {:array, :string}
    end
  end
end
