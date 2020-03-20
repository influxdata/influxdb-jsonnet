local type = "query";

{
  new(
    name,
    description="",
    language,
    query
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
        "language": language,
        "query": query
      }
  }
}
