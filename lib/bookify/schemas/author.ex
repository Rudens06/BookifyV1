defmodule Bookify.Author do

  use Ecto.Schema
  import Ecto.Changeset
  alias Bookify.GenId
  alias Bookify.Book

  @timestamps_opts [type: :utc_datetime]
  @primary_key {:id, :string, autogenerate: false}
  schema "authors" do
    field :name, :string
    field :birth_year, :integer
    field :bio, :string
    field :author_pic_url, :string
    field :wikipedia_url, :string
    has_many :books, Book

  end

  def changeset(author, params \\ %{}) do
    author
    |> cast(params, [:name, :birth_year, :bio, :author_pic_url, :wikipedia_url])
    |> validate_required([:name, :birth_year])
  end

  def new() do
    %__MODULE__{id: GenId.generate()}
  end

  def slug(author) do
    author.name
    |> String.downcase()
    # remove non-word characters
    |> String.replace(~r/[^\w\s]/, "")
    # split into words
    |> String.split()
    # join words with hyphen
    |> Enum.join("-")
  end

  def slug_with_id(author) do
    slug(author) <> "-" <> author.id
  end
end
