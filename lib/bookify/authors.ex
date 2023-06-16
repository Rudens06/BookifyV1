defmodule Bookify.Authors do
  import Ecto.Query
  alias Bookify.Repo
  alias Bookify.Author

  def list_all(params) do
    search_term = get_in(params, ["query"])

    Author
    |> search(search_term)
    |> Repo.all()
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

  def search(query, search_term) do
    wildcard_search = "%#{search_term}%"

    from author in query,
    where: ilike(author.name, ^wildcard_search)
  end
end
