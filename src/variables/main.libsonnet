local join(a) =
local notNull(i) = i != null;
local maybeFlatten(acc, i) = if std.type(i) == "array" then acc + i else acc + [i];
std.foldl(maybeFlatten, std.filter(notNull, a), []);
{
  new(
    name,
    description="",
    type="",
    query="",
    language="",
    values=[]
  )::
join([if type == "query" then {
    "apiVersion": "influxdata.com/v2alpha1",
    "kind": "Variable",
    "metadata": {
      "name": name
    },
    "spec": {
      "description": description,
      "type":type,
      "query": query,
      "language":language,
    }
  },
  if type == "constant" then {
      "apiVersion": "influxdata.com/v2alpha1",
      "kind": "Variable",
      "metadata": {
        "name": name
      },
      "spec": {
        "description": description,
        "type":type,
        "values":values
      }
    },
    if type == "map" then {
          "apiVersion": "influxdata.com/v2alpha1",
          "kind": "Variable",
          "metadata": {
            "name": name
          },
          "spec": {
            "description": description,
            "type":type,
            "values":values
          }
        },
])

}
