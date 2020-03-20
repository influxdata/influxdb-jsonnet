local influxdb = import '../../influxdb.libsonnet';
local query = influxdb.variable.query;

[
    query.new(name="query", description="my description", language="flux", query="flux")
]
