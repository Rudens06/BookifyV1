defmodule Bookify.Author do

  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :string, autogenerate: false}
  schema "authors" do
    field :name, :string
    field :birth_year, :integer
    field :bio, :string
    field :author_pic_url, :string
    field :wikipedia_url, :string

  end

    def changeset(author, params \\ %{}) do
      author
      |> cast(params, [:name, :birth_year, :bio, :author_pic_url, :wikipedia_url])
      |> validate_required([:name, :birth_year])
    end

end
