defmodule ProcartWeb.PageController do
  use ProcartWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
