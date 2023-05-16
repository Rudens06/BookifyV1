defmodule Bookify.Book do
  use Ecto.Schema
  import Ecto.Changeset
  alias Bookify.Author
  alias Bookify.Review
  alias Bookify.BooksInLists
  alias Bookify.List
  alias Bookify.GenId

  @timestamps_opts [type: :utc_datetime]
  @primary_key {:id, :string, autogenerate: false}
  @foreign_key_type :string
  schema "books" do
    field :title, :string
    belongs_to :author, Author
    field :publish_year, :integer
    field :page_count, :integer
    field :genre, {:array, :string}
    field :cover_pic_url, :string
    field :anotation, :string
    has_many :reviews, Review
    many_to_many :lists, List, join_through: BooksInLists
  end

  def changeset(book, params \\ %{}) do
    book
    |> cast(params, [:title, :author_id, :publish_year, :page_count, :genre, :cover_pic_url, :anotation])
    |> validate_required([:title, :author_id, :publish_year, :page_count, :genre, :cover_pic_url, :anotation])
  end

  def new() do
    %__MODULE__{id: GenId.generate()}
  end
end
