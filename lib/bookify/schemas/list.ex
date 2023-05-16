defmodule Bookify.List do
  use Ecto.Schema
  import Ecto.Changeset
  alias Bookify.User
  alias Bookify.Book
  alias Bookify.GenId
  alias Bookify.BooksInLists

  @timestamps_opts [type: :utc_datetime]
  @primary_key {:id, :string, autogenerate: false}
  @foreign_key_type :string
  schema "lists" do
    belongs_to :user, User
    field :type, :string
    many_to_many :books, Book, join_through: BooksInLists
  end

  def changeset(list, params \\ %{}) do
    list
    |> cast(params, [])
  end

  def new() do
    %__MODULE__{id: GenId.generate()}
  end
end
