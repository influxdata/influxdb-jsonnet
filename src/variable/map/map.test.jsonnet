local influxdb = import '../../influxdb.libsonnet';
local map = influxdb.variable.map;

[
    map.new(name="map", description="my description", values={key1: "value 1", key2: "value 2"})
]
