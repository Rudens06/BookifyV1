defmodule Bookify.List do
  use Ecto.Schema
  import Ecto.Changeset
  alias Bookify.User

  @foreign_key_type :integer
  schema "lists" do
    belongs_to :user, User
    field :type, :string
  end

  def changeset(list, params \\ %{}) do
    list
    |> cast(params, [])
    |> validate_required([:user])
  end
end
