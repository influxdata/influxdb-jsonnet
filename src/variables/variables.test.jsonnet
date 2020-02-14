local influxdb = import '../influxdb.libsonnet';
local variable = influxdb.variables;

[
  variable.new(name="v---------1", description="adasdasd",type="query",query=|||
                                                                               from(bucket: "bucket")
                                                                               |> range(start: -1h)
                                                                             |||,language="flux"),
  variable.new(name="v---------2", description="adasdasd",type="query",query=|||
                                                                                     SELECT * from cpu limit 10
                                                                                   |||,language="influxql"),
  variable.new(name="v---------3", description="adasdasd",type="constant",values=[1,2,3]),
  variable.new(name="v---------4", description="adasdasd",type="map",values={k1:"v1",k2:"v2"}),
]
