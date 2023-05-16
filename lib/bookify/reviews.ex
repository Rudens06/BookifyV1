defmodule Bookify.Reviews do
  alias Bookify.Repo
  alias Bookify.Review

  def list_reviews() do
    Repo.all(Review)
    |> Repo.preload(:user)
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
    |> Repo.delete!
  end
end
