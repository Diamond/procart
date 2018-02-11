const getData = async () => {
  const res = await fetch("/api");
  const json = await res.json();
  //console.log("Received from API:", json);
  return json.canvas;
};

export { getData };
