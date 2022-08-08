defmodule ProjetyWeb.PageController do
  use ProjetyWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
