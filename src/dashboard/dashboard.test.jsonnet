local influxdb = import '../influxdb.libsonnet';
local dashboard = influxdb.dashboard;
local query = influxdb.query;

local queryOne = query.new(flux=|||
    from(bucket: "b1")
    |> range(start: -2h)
|||);

local singleStatOne = dashboard.charts.singleStat.new(name="ss_one", queries=[queryOne]);
local singleStatTwo = dashboard.charts.singleStat.new(name="ss_two", queries=[queryOne], note="ss_two");

[
  dashboard.new(name="new_dashboard_one"),
  dashboard.new(name="new_dashboard_two", description="My Dashboard"),
  dashboard.new(name="new_dashboard_three", description="My Dashboard", charts=[singleStatOne, singleStatTwo]),
]
