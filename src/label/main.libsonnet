local join(a) =
local notNull(i) = i != null;
local maybeFlatten(acc, i) = if std.type(i) == "array" then acc + i else acc + [i];
std.foldl(maybeFlatten, std.filter(notNull, a), []);
{
  new(
    name,
    color="",
    description="",
  )::
join([if std.length(color) > 0  || std.length(description) > 0 then {
     apiVersion: "influxdata.com/v2alpha1",
          kind: "Label",
          metadata: {
            name: name,
          },
          spec: {
            description: description,
            color: color,
          }
  },
  if std.length(color) == 0  && std.length(description) == 0 then {
       apiVersion: "influxdata.com/v2alpha1",
               kind: "Label",
               metadata: {
                 name: name,
               },
    },
])

}
