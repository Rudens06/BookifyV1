defmodule Bookify.Book do
  use Ecto.Schema
  import Ecto.Changeset
  alias Bookify.Author
  alias Bookify.Review

  @foreign_key_type :integer
  schema "book" do
    field :name, :string
    field :author_id, :integer
    field :genere, :string
    field :cover_pic_url, :string
    field :anotation, :string

    has_one Author
    has_many Review
  end

  def changeset(book, params \\ %{}) do
    book
    |> cast(params, [:name, :genere, :cover_pic_url, :anotation])
    |> validate_required([:name, :genere, :author_id])
  end

end
