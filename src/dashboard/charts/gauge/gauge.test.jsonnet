local influxdb = import '../../../influxdb.libsonnet';
local gauge = influxdb.dashboard.charts.gauge;
local query = influxdb.query;

local queryOne = query.new(flux=|||
    from(bucket: "b1")
    |> range(start: -2h)
|||);

local queryTwo = query.new(flux=|||
    from(bucket: "b2")
    |> range(start: -4h)
|||);

[
    gauge.new(name="my_gauge_one", queries=[queryOne]),
    gauge.new(name="my_gauge_two", queries=[queryOne, queryTwo], note="My Gauge Note"),
]
