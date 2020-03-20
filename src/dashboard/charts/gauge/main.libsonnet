local Kind = "gauge";

{
  new(
    name,
    queries,
    note="",
  )::
  {
      kind: Kind,
      name: name,
      prefix: "prefix",
      tickPrefix: "true",
      suffix: "suffix",
      tickSuffix: "false",
      note: note,
      noteOnEmpty: true,
      xPos: 1,
      yPos: 2,
      width: 6,
      height: 3,
      decimalPlaces: 1,
      xColumn: "_time",
      yColumn: "_value",
      queries: queries,
      colors: [],
  },
}
