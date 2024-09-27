defmodule Bookify.Repo.Migrations.RenameAuthorImageField do
  use Ecto.Migration

  def change do
    rename table(:authors), :author_pic_url, to: :image_url
  end
end
