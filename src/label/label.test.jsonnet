local influxdb = import '../influxdb.libsonnet';
local label = influxdb.label;
local join(a) =
local notNull(i) = i != null;
local maybeFlatten(acc, i) = if std.type(i) == "array" then acc + i else acc + [i];
std.foldl(maybeFlatten, std.filter(notNull, a), []);

local ret = [
  label.new(name="my_label", color="#FF0000"),
  label.new(name="other_label", color="#00FF00", description="My Other Label"),
];

join(ret)
