defmodule Takso.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :name, :string
    field :username, :string
    field :password, :string
    field :age, :integer

    timestamps()
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :username, :age, :password])
    |> validate_required([:name, :username, :age, :password])
    |> validate_inclusion(:age, 0..100)
  end
end
