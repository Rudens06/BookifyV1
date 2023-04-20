defmodule Bookify.Repo.Migrations.UserHashedPasswordToNotNull do
  use Ecto.Migration

  def change do
    alter table(:users) do
      modify :hashed_password,
          :string,
          null: false
    end
  end
end
