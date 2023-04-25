defmodule Bookify.List do
  use Ecto.Schema
  import Ecto.Changeset
  alias Bookify.User
  alias Bookify.GenId

  @primary_key {:id, :string, autogenerate: false}
  @foreign_key_type :string
  schema "lists" do
    belongs_to :user, User
    field :type, :string
  end

  def changeset(list, params \\ %{}) do
    list
    |> cast(params, [])
    |> validate_required([:user])
  end

  def new() do
    %__MODULE__{id: GenId.generate()}
  end
end
