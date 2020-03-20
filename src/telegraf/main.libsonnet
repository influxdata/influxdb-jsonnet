{
  new(
    name,
    description="",
    labels=null,
    config
  )::
  {
    apiVersion: "influxdata.com/v2alpha1",
    kind: "Telegraf",
    metadata: {
      name: name,
    },
    spec: {
      description: description,
      [if labels != null then 'associations']: [{kind: "Label", name: l.metadata.name}, for l in labels],
      config: config
    }
  }
}
