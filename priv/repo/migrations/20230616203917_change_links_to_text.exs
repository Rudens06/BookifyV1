defmodule Bookify.Repo.Migrations.ChangeLinksToText do
  use Ecto.Migration

  def change do
    alter table(:books) do
      modify :cover_pic_url, :text
    end

    alter table(:authors) do
      modify :author_pic_url, :text
    end

  end
end
