defmodule ProjetyWeb.ProjectView do
  use ProjetyWeb, :view

  def convert_number(digit) do
    Number.Currency.number_to_currency(digit)
  end
end
