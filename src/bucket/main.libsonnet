{
  new(
    name,
    description="",
    retentionRules=[],
  )::
    {
      apiVersion: "influxdata.com/v2alpha1",
      kind: "Bucket",
      metadata: {
        name: name,
      },
      spec: {
        description: description,
        retentionRules: retentionRules,
      }
    },
}
