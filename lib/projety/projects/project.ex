defmodule Projety.Projects.Project do
  use Ecto.Schema
  import Ecto.Changeset

  schema "projects" do
    field :budget, :decimal
    field :description, :string
    field :end_date, :date
    field :start_date, :date
    field :title, :string
    field :img_url, :string

    timestamps()
  end

  @doc false
  def changeset(project, attrs) do
    project
    |> cast(attrs, [:title, :img_url, :description, :start_date, :end_date, :budget])
    |> validate_required([:title, :img_url, :description, :start_date, :end_date, :budget])
  end
end
