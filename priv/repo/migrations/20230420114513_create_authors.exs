defmodule Bookify.Repo.Migrations.CreateAuthors do
  use Ecto.Migration

  def change do
    create table(:authors) do
      add :name,
          :string,
          null: false

      add :surname,
          :string,
          null: false

      add :birth_year,
          :integer,
          null: false

      add :bio,
          :string,
          null: true

      add :author_pic_url,
          :string,
          null: true

      add :wikipedia_url,
          :string,
          null: true
    end
  end
end
