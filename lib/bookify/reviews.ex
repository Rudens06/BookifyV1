defmodule Bookify.Reviews do
  import Ecto.Query
  alias Bookify.Repo
  alias Bookify.Review

  def list_reviews(preloads \\ []) do
    Review
    |> order_by(desc: :inserted_at)
    |> Repo.all()
    |> Repo.preload(preloads)
  end

  def get_by_id!(user_id) do
    Repo.get!(Review, user_id)
  end

  def insert(review) do
    Repo.insert(review)
  end

  def update(review) do
    Repo.update(review)
  end

  def delete_review_by_id!(user_id) do
    Repo.get(Review, user_id)
    |> Repo.delete!()
  end
end
