defmodule Bookify.Repo.Migrations.FixMiscStupidThings do
  use Ecto.Migration

  def change do
    alter table(:books) do
      remove :name
      add :title, :string
    end

    alter table(:authors) do
       remove :surname
    end

    alter table(:users) do
      remove :surname
   end
  end
end
