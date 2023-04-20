defmodule Bookify.Repo.Migrations.CreateBooks do
  use Ecto.Migration

  def change do
    create table(:books) do
      add :name,
          :string,
          null: false

          add :author_id,
          references(:authors, type: :integer, on_delete: :delete_all),
          null: false

      add :genere,
          :string,
          null: false

      add :cover_pic_url,
          :string,
          null: true

      add :anotation,
          :string,
          null: true
    end
  end
end
