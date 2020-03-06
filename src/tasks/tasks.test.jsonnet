local influxdb = import '../influxdb.libsonnet';
local tasks = influxdb.tasks;
local label = influxdb.label;
local join(a) =
local notNull(i) = i != null;
local maybeFlatten(acc, i) = if std.type(i) == "array" then acc + i else acc + [i];
std.foldl(maybeFlatten, std.filter(notNull, a), []);

local ret = [
  label.new(name="label_1"),
  tasks.new(name="task_0", description="desc_0",every="10m",status="inactive",query=|||
                                                                                         from(bucket: "rucket_1")
                                                                                           |> range(start: -5d, stop: -1h)
                                                                                           |> filter(fn: (r) => r._measurement == "cpu")
                                                                                           |> filter(fn: (r) => r._field == "usage_idle")
                                                                                           |> aggregateWindow(every: 1m, fn: mean)
                                                                                           |> yield(name: "mean")
|||,associations=[{"kind": "Label","name": "label_1" }]),
  tasks.new(name="task_1", description="desc_1",cron="query",query=|||
                                                                                                                                                            from(bucket: "rucket_1")
                                                                                                                                                              |> range(start: -5d, stop: -1h)
                                                                                                                                                              |> filter(fn: (r) => r._measurement == "cpu")
                                                                                                                                                              |> filter(fn: (r) => r._field == "usage_idle")
                                                                                                                                                              |> aggregateWindow(every: 1m, fn: mean)
                                                                                                                                                              |> yield(name: "mean")
                                                                   |||,associations=[{"kind": "Label","name": "label_1" }]),
];

join(ret)
