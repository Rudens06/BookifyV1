defmodule Bookify.Review do
  use Ecto.Schema
  import Ecto.Changeset
  alias Bookify.Book
  alias Bookify.User
  alias Bookify.GenId

  @primary_key {:id, :string, autogenerate: false}
  @foreign_key_type :string
  schema "reviews" do
    belongs_to :book, Book
    belongs_to :user, User
    field :review, :string
    field :rating, :integer
    timestamps()
  end

  def changeset(review, params \\ %{}) do
    review
    |> cast(params, [:review, :rating])
    |> validate_required([:book, :user, :review, :rating])
  end

  def new() do
    %__MODULE__{id: GenId.generate()}
  end
end
