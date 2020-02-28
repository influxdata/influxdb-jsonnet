local influxdb = import '../influxdb.libsonnet';
local variable = influxdb.variables;

[
  variable.new(name="var_query_1", description="var_query_1 desc",type="query",query=|||
                                                                               buckets()  |> filter(fn: (r) => r.name !~ /^_/)  |> rename(columns: {name: "_value"})  |> keep(columns: ["_value"])
   |||,language="flux"),
  variable.new(name="var_query_2", description="var_query_2 desc",type="query",query="an influxql query of sorts",language="influxql"),
  variable.new(name="var_const_3", description="var_const_3 desc",type="constant",values=["first val"]),
  variable.new(name="var_map_4", description="var_map_4 desc",type="map",values={k1:"v1"}),
]
