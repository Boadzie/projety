defmodule Projety.ProjectsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Projety.Projects` context.
  """

  @doc """
  Generate a project.
  """
  def project_fixture(attrs \\ %{}) do
    {:ok, project} =
      attrs
      |> Enum.into(%{
        budget: "120.5",
        description: "some description",
        end_date: ~N[2022-08-07 17:47:00],
        start_date: ~N[2022-08-07 17:47:00],
        title: "some title"
      })
      |> Projety.Projects.create_project()

    project
  end
end
