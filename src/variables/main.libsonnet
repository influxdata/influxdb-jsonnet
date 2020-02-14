{
  new(
    name,
    description="",
  )::
    {
        "apiVersion": "influxdata.com/v2alpha1",
        "kind": "Variable",
        "metadata": {
          "name": name
        },
        "spec": {
          "description": description,
        }
      },
}
