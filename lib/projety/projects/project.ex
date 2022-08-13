defmodule Projety.Projects.Project do
  use Ecto.Schema
  import Ecto.Changeset

  schema "projects" do
    field :budget, :decimal
    field :description, :string
    field :end_date, :date
    field :start_date, :date
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(project, attrs) do
    project
    |> cast(attrs, [:title, :description, :start_date, :end_date, :budget])
    |> validate_required([:title, :description, :start_date, :end_date, :budget])
  end
end
