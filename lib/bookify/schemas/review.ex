defmodule Bookify.Review do
  use Ecto.Schema
  import Ecto.Changeset
  alias Bookify.Book
  alias Bookify.User

  @foreign_key_type :integer
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
end
