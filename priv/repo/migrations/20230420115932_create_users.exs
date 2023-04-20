defmodule Bookify.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name,
          :string,
          null: false

      add :surname,
          :string,
          null: false

      add :email,
          :string,
          null: false

      add :hashed_password,
          :string,
          null: true

      add :roles,
          {:array, :string},
          null: false

      timestamps()
    end
  end
end
