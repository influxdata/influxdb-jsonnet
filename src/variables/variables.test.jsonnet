local influxdb = import '../influxdb.libsonnet';
local variable = influxdb.variables;

[
  variable.new(name="v---------1", description="adasdasd"),
  variable.new(name="v---------2", description="My Other Label"),
]
