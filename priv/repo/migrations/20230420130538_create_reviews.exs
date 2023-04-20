defmodule Bookify.Repo.Migrations.CreateReviews do
  use Ecto.Migration

  def change do
    create table(:reviews) do
      add :book_id,
          references(:books, type: :integer, on_delete: :delete_all),
          null: false

      add :user_id,
          references(:users, type: :integer, on_delete: :delete_all),
          null: false

      add :review,
          :string,
          null: false

      add :rating,
          :integer,
          null: true
    end
    create constraint("reviews", :rating_must_be_from_0_and_10, check: "rating >= 0 and rating <= 10")
  end
end
