local type = "map";

{
  new(
    name,
    description="",
    values={},
  )::
  {
      "apiVersion": "influxdata.com/v2alpha1",
      "kind": "Variable",
      "metadata": {
        "name": name
      },
      "spec": {
        "type": type,
        "description": description,
        "values": values
      }
  }
}
