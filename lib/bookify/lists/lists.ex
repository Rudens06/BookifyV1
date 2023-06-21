defmodule Bookify.Lists do
  alias Bookify.Repo
  alias Bookify.List
  alias Bookify.Lists.ListQuery

  def get_by_id!(list_id) do
    Repo.get!(List, list_id)
  end

  def insert(list) do
    Repo.insert(list)
  end

  def update(list) do
    Repo.update(list)
  end

  def delete_by_id!(list_id) do
    Repo.get(List, list_id)
    |> Repo.delete!()
  end

  def get_lists_by_user_id(user_id) do
    Repo.all(ListQuery.lists_by_user_id_query(user_id))
    |> Repo.preload(books: [:author])
  end

  def book_in_list?(user_id, list_type, book_id) do
    list = Repo.get_by(List, type: list_type, user_id: user_id)
    Repo.exists?(ListQuery.book_in_list_query(list.id, book_id))
  end
end
