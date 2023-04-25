defmodule Bookify.Repo.Migrations.AddDefaultMapToUserRoles do
  use Ecto.Migration

  def change do
    alter table(:users) do
      remove :roles
      add :roles, {:array, :string}, default: []
    end
  end
end
