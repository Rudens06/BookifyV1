defmodule Bookify.Lists.ListQuery do
  import Ecto.Query
  alias Bookify.List
  alias Bookify.BooksInLists

  def lists_by_user_id_query(user_id) do
    from(l in List,
      where: l.user_id == ^user_id,
    )
  end
end
