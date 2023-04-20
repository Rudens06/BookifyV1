defmodule Bookify.Book do
  use Ecto.Schema
  import Ecto.Changeset
  alias Bookify.Author
  alias Bookify.Review

  @foreign_key_type :integer
  schema "book" do
    field :name, :string
    belongs_to :author, Author
    field :genere, :string
    field :cover_pic_url, :string
    field :anotation, :string
    has_many :reviews, Review
  end

  def changeset(book, params \\ %{}) do
    book
    |> cast(params, [:name, :genere, :cover_pic_url, :anotation])
    |> validate_required([:name, :genere, :author_id])
  end

end
