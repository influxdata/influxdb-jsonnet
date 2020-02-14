{
  new(
    name,
    description="",
    type="",
    query="",
    language="",
    values=[]
  )::
    {
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
          "values":values
        }
      },
}
