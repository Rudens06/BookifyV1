defmodule Bookify.Repo.Migrations.RenameGenreForBookAgain do
  use Ecto.Migration

  def change do
    alter table(:books) do
      remove :genere
      add :genre, {:array, :string}
    end
  end
end
