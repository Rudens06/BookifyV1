defmodule Bookify.Book do
  use Ecto.Schema
  import Ecto.Changeset
  alias Bookify.Author
  alias Bookify.Review

  @foreign_key_type :integer
  schema "books" do
    field :title, :string
    belongs_to :author, Author
    field :genre, {:array, :string}
    field :cover_pic_url, :string
    field :anotation, :string
    has_many :reviews, Review
  end

  def changeset(book, params \\ %{}) do
    book
    |> cast(params, [:title, :author_id,  :genre, :cover_pic_url, :anotation])
    |> validate_required([:title, :genre])
  end

end
