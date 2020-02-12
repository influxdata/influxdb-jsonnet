local influxdb = import '../../../influxdb.libsonnet';
local singleStat = influxdb.dashboard.charts.singleStat;
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
    singleStat.new(name="my_single_stat_one", queries=[queryOne]),
    singleStat.new(name="my_single_stat_two", queries=[queryOne, queryTwo], note="My Single Stat Note"),
]
