local join(a) =
local notNull(i) = i != null;
local maybeFlatten(acc, i) = if std.type(i) == "array" then acc + i else acc + [i];
std.foldl(maybeFlatten, std.filter(notNull, a), []);
{
  new(
    name,
    description="",
    every="",
    query="",
    cron="",
    offset="",
    status="",
    associations=[]
  )::
join([if std.length(status) > 0 then {
     "apiVersion": "influxdata.com/v2alpha1",
        "kind": "Task",
        "metadata": {
          "name": name
        },
        "spec": {
          "description": description,
          "every": "10m",
          "offset": "15s",
          "query": query,
          "status": "inactive",
          "associations": associations
        }
  },
  if std.length(cron) > 0 then {
      "apiVersion": "influxdata.com/v2alpha1",
          "kind": "Task",
          "metadata": {
            "name": name
          },
          "spec": {
            "description": description,
            "cron": "15 * * * *",
            "query": query,
            "associations": associations
          }
    },
])

}
