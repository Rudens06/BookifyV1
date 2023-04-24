defmodule Bookify.Repo.Migrations.DropConstraints do
  use Ecto.Migration

  def change do
    drop constraint(:books, :author_id)
    drop constraint(:books_in_lists, :list_id)
    drop constraint(:books_in_lists, :book_id)
    drop constraint(:lists, :user_id)
    drop constraint(:reviews, :user_id)
    drop constraint(:reviews, :book_id)
  end
end
