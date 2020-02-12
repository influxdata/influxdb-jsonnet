local influxdb = import 'influxdb.libsonnet';
local label = influxdb.label;

[
  label.new(name="my_label", color="#FF0000"),
  label.new(name="other_label", color="#00FF00", description="My Other Label"),
]
