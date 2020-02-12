local influxdb = import '../influxdb.libsonnet';
local query = influxdb.query;

[
  query.new(flux=|||
  from(bucket: "bucket")
  |> range(start: -1h)
|||),
]
