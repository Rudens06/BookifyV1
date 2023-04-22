defmodule Bookify.Authors do
  alias Bookify.Repo
  alias Bookify.Author

  def list_all() do
    Repo.all(Author)
  end

  def get_by_id!(author_id) do
    Repo.get!(Author, author_id)
  end

  def insert(author) do
    Repo.insert(author)
  end

  def update(author) do
    Repo.update(author)
  end

  def delete_by_id!(author_id) do
    Repo.get(Author, author_id)
    |> Repo.delete!
  end
end
