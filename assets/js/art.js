import SVG from "svg.js";

import { getData } from "./art_service";

// Set up our variables
let draw;

// Simulate data from the API
const mockRequest = {
  shapes: [
    {
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
      pos: {
        x: 20,
        y: 20
      }
    },
    {
      type: "rect",
      width: 100,
      height: 100,
      color: "#f06",
      pos: {
        x: 200,
        y: 100
      }
    },
    {
      type: "circle",
      radius: 250,
      color: "#f06",
      pos: {
        x: 500,
        y: 350
      }
    },
    {
      type: "polygon",
      points: [[0, 0], [100, 100], [200, 0]],
      color: "#f06",
      pos: {
        x: 250,
        y: 375
      }
    }
  ]
};

const polygon = ({ type, points, color, pos }) => {
  draw
    .polygon(points)
    .fill(color)
    .move(pos.x, pos.y);
};

const rect = ({ type, width, height, color, pos }) => {
  draw
    .rect(width, height)
    .fill(color)
    .move(pos.x, pos.y);
};

const circle = ({ type, radius, color, pos }) => {
  draw
    .circle(radius)
    .fill(color)
    .move(pos.x, pos.y);
};

const drawCanvas = canvas => {
  canvas.shapes.forEach(shp => {
    if (shp.type == "polygon") {
      polygon(shp);
    } else if (shp.type == "rect") {
      rect(shp);
    } else if (shp.type == "circle") {
      circle(shp);
    }
  });
};

SVG.on(document, "DOMContentLoaded", async function() {
  // Initialize the drawing
  draw = SVG("drawing");

  // Fetch the canvas data from our API
  const canvas = await getData();

  drawCanvas(canvas);
});
