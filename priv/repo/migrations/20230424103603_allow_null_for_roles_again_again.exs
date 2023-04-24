defmodule Bookify.Repo.Migrations.AllowNullForRolesAgainAgain do
  use Ecto.Migration

  def change do
    alter table(:users) do
      remove :roles
      add :roles,
          {:array, :string},
          null: true
    end
  end
end
