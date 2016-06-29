defmodule Habitus.Repo.Migrations.CreatePage do
  use Ecto.Migration

  def change do
    create table(:pages) do
      add :title, :string
      add :content, :string
      add :author, references(:users, on_delete: :nothing)

      timestamps()
    end
    create index(:pages, [:author])

  end
end
