local influxdb = import '../influxdb.libsonnet';
local telegraf = influxdb.telegraf;
local label = influxdb.label;


[
  telegraf.new(name="telegraf_1", config=|||
  [agent]
    interval = "10s"
|||),


  telegraf.new(name="telegraf_2", description="2 Second Scrape", config=|||
  [agent]
    interval = "2s"
|||),


  telegraf.new(name="telegraf_3", description="Label Associations", labels=[label.new(name="my_label", color="#FF0000")], config=|||
  [agent]
    interval = "5s"
|||),
]
