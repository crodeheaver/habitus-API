defmodule Habitus.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :firstName, :string
      add :lastName, :string
      add :displayName, :string
      add :email, :string
      add :password, :string

      timestamps()
    end

  end
end
