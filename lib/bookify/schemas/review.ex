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
    field :rating, :float
    timestamps()
  end

  def changeset(review, params \\ %{}) do
    review
    |> cast(params, [:title, :review, :rating])
    |> validate_required([:rating])
    |> validate_rating()
  end

  defp validate_rating(changeset) do


    case get_change(changeset, :rating) do
      nil -> changeset
      rating ->
        case validate_float_inclusion(rating, 0, 5) do
          {:ok, _} -> changeset
          {:error, message} ->
            add_error(changeset, :rating, message)
        end
    end
  end

  defp validate_float_inclusion(value, from, to, message \\ "Rating must be between 1 and 5") do
    if value > from and value <= to do
      {:ok, value}
    else
      {:error, message}
    end
  end

  def new() do
    %__MODULE__{id: GenId.generate()}
  end
end
