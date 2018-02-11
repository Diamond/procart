defmodule ProcartWeb.Api.ArtView do
  use ProcartWeb, :view

  def render("index.json", %{ canvas: canvas }) do
    %{ canvas: canvas }
  end
end