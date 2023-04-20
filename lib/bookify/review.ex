defmodule Bookify.Review do
  use Ecto.Schema
  import Ecto.Changeset
  alias Bookify.Book
  alias Bookify.User

  @foreign_key_type :integer
  schema "review" do
    belongs_to :book, Book
    belongs_to :user, User
    field :review, :string
    field :rating, :integer
  end

  def changeset(review, params \\ %{}) do
    book
    |> cast(params, [:review, :rating])
    |> validate_required([:book, :user, :review, :rating])
end
