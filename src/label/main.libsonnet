{
  new(
    name,
    color,
    description="",
  )::
    {
      apiVersion: "influxdata.com/v2alpha1",
      kind: "Label",
      metadata: {
        name: name,
      },
      spec: {
        description: description,
        color: color,
      }
    },
}
