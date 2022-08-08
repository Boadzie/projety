defmodule Projety.Repo.Migrations.CreateProjects do
  use Ecto.Migration

  def change do
    create table(:projects) do
      add :title, :string
      add :description, :string
      add :start_date, :naive_datetime
      add :end_date, :naive_datetime
      add :budget, :decimal

      timestamps()
    end
  end
end
