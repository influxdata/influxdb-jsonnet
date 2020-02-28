{
  new(
    name,
    description="",
    type="",
    query="",
    language="",
    values=[]
  )::
[if type == "query" then {
    "apiVersion": "influxdata.com/v2alpha1",
    "kind": "Variable",
    "metadata": {
      "name": name
    },
    "spec": {
      "description": description,
      "type":type,
      "query": query,
      "language":language,
    }
  },
  if type == "constant" then {
      "apiVersion": "influxdata.com/v2alpha1",
      "kind": "Variable",
      "metadata": {
        "name": name
      },
      "spec": {
        "description": description,
        "type":type,
        "values":values
      }
    },
    if type == "map" then {
          "apiVersion": "influxdata.com/v2alpha1",
          "kind": "Variable",
          "metadata": {
            "name": name
          },
          "spec": {
            "description": description,
            "type":type,
            "values":values
          }
        },
]
}
