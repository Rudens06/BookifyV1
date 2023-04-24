defmodule Bookify.Repo.Migrations.AllowNullForRoles do
  use Ecto.Migration

  def change do
    alter table(:users) do
      remove :roles
      add :roles,
          {:array, :string},
          null: false
    end
  end
end
