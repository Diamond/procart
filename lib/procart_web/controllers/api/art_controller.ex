defmodule ProcartWeb.Api.ArtController do
  use ProcartWeb, :controller

  def index(conn, _params) do
    canvas = %{
      shapes: [
        %{
          type: "polygon",
          points: [
            [50, 0],
            [60, 40],
            [100, 50],
            [60, 60],
            [50, 100],
            [40, 60],
            [0, 50],
            [40, 40]
          ],
          color: "#f06",
          pos: %{
            x: 20,
            y: 20
          }
        },
        %{
          type: "rect",
          width: 100,
          height: 100,
          color: "#f06",
          pos: %{
            x: 200,
            y: 100
          }
        },
        %{
          type: "circle",
          radius: 250,
          color: "#f06",
          pos: %{
            x: 500,
            y: 350
          }
        },
        %{
          type: "polygon",
          points: [[0, 0], [100, 100], [200, 0]],
          color: "#f06",
          pos: %{
            x: 250,
            y: 375
          }
        }
      ]
    }
    render(conn, "index.json", canvas: canvas)
  end
end
