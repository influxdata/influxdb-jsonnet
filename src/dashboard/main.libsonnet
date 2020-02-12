{
  charts:: import 'charts/main.libsonnet',

  new(
    name,
    description="",
    charts=[],
  )::
    {
      apiVersion: "influxdata.com/v2alpha1",
      kind: "Dashboard",
      metadata: {
        name: name,
      },
      spec: {
        description: description,
        charts: charts,
      }
    },
}
