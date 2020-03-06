
{
  new(
    name,
    description="",
    config="",
    associations=[]
  )::
{
     "apiVersion": "influxdata.com/v2alpha1",
        "kind": "Telegraf",
        "metadata": {
          "name": name
        },
        "spec": {
          "description": description,
          "associations": associations,
          "config":config
        }
        },
}
