defmodule Bookify.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :name, :string
    field :email, :string
    field :hashed_password, :string
    field :roles, {:array, :string}
  end

    def changeset(user, params \\ %{}) do
      user
      |> cast(params, [:name, :email])
      |> validate_required([:name, :email])
      |> unique_constraint([:email])
    end
end
