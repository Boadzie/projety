defmodule Projety.Repo.Migrations.ProjectsAddImgurlColumn do
  use Ecto.Migration

  def change do
    alter table("projects") do
      add(:img_url, :string)
    end
  end
end
