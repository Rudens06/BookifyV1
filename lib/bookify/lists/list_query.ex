defmodule Bookify.Lists.ListQuery do
  import Ecto.Query
  alias Bookify.List
  alias Bookify.BooksInLists

  def lists_by_user_id_query(user_id) do
    from(l in List,
      where: l.user_id == ^user_id
    )
  end

  def list_by_user_id_and_type(user_id, list_type) do
    from(l in List,
      where: l.user_id == ^user_id and l.type == ^list_type
    )
  end

  def book_in_list_query(list_id, book_id) do
    from(
      bil in BooksInLists,
      where: bil.list_id == ^list_id and bil.book_id == ^book_id
    )
  end
end
