local influxdb = import '../../influxdb.libsonnet';
local constant = influxdb.variable.constant;

[
    constant.new(name="constant", description="my description", values=["value 1", "value 2"])
]
