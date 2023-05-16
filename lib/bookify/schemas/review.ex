defmodule Bookify.Review do
  use Ecto.Schema
  import Ecto.Changeset
  alias Bookify.Book
  alias Bookify.User
  alias Bookify.GenId

  @timestamps_opts [type: :utc_datetime]
  @primary_key {:id, :string, autogenerate: false}
  @foreign_key_type :string
  schema "reviews" do
    belongs_to :book, Book
    belongs_to :user, User
    field :title, :string
    field :review, :string
    field :rating, :integer
    timestamps()
  end

  def changeset(review, params \\ %{}) do
    review
    |> cast(params, [:title, :review, :rating])
    |> validate_required([:title, :review, :rating])
    |> validate_inclusion(:rating, 1..10, message: "Rating must be between 1 and 10")
  end

  def new() do
    %__MODULE__{id: GenId.generate()}
  end
end
