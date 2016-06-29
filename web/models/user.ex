defmodule Habitus.User do
  use Habitus.Web, :model

  schema "users" do
    field :firstName, :string
    field :lastName, :string
    field :displayName, :string
    field :email, :string
    field :password, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:firstName, :lastName, :displayName, :email, :password])
    |> validate_required([:firstName, :lastName, :displayName, :email, :password])
  end
end
