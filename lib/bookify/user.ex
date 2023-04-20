defmodule Bookify.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "user" do
    field :name, :string
    field :surename, :string
    field :email, :string
    field :hashed_password, :string
    field :roles, {:array, :string}
  end

    def changeset(user, params \\ %{}) do
      user
      |> cast(params, [:name, :surname, :email])
      |> validate_required([:name, :surname, :email])
    end
end
