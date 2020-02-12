local Kind = "Single_Stat";

{
  new(
    name,
    queries,
    note="",
  )::
  {
      kind: Kind,
      name: name,
      prefix: "sumtin",
      tickPrefix: "true",
      suffix: "days",
      tickSuffix: "true",
      note: note,
      noteOnEmpty: true,
      xPos: 1,
      yPos: 2,
      width: 6,
      height: 3,
      decimalPlaces: 1,
      shade: true,
      xColumn: "_time",
      yColumn: "_value",
      queries: queries,
      colors: [],
  },
}
