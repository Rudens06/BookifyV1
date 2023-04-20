defmodule Bookify.Author do

  use Ecto.Schema
  import Ecto.Changeset

  schema "author" do
    field :name, :string
    field :surename, :string
    field :birth_year, :integer
    field :bio, :string
    field :author_pic_url, :string
    field :wikipedia_url, :string

  end

    def changeset(author, params \\ %{}) do
      author
      |> cast(params, [:name, :surname, :birth_year, :bio, :author_pic_url, :wikipedia_url])
      |> validate_required([:name, :surname, :birth_year])
    end

end
