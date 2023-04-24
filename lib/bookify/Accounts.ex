defmodule Bookify.Accounts do
  alias Bookify.Repo
  alias Bookify.User

  def list_users() do
    Repo.all(User)
  end

  def get_user_by_id!(user_id) do
    Repo.get!(User, user_id)
  end

  def insert(user) do
    Repo.insert(user)
  end

  def update(user) do
    Repo.update(user)
  end

  def delete_user_by_id!(user_id) do
    Repo.get(User, user_id)
    |> Repo.delete!
  end

  def get_user_by_email(email) do
    Repo.get_by(User, email: email)
  end
end
