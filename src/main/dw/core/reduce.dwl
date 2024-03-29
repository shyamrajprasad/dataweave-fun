%dw 2.0
output application/json
var myVar =
{
  "a": [0, 1, 2, 3, 4, 5],
  "b": ["a", "b", "c", "d", "e"],
  "c": [{ "letter": "a" }, { "letter": "b" }, { "letter": "c" }],
  "d": [true, false, false, true, true]
}
---
{
  "a" : myVar.a reduce $$,
  "b": myVar.b reduce $$,
  "c": myVar.c reduce ((item, acc = "z") -> acc ++ item.letter),
  "d": myVar.c reduce $$,
  "e": myVar.d reduce ($$ and $),
  "f": myVar.d reduce ((item, acc) -> acc and item),
  "g": myVar.d reduce ((item, acc = false) -> acc and item),
  "h": myVar.d reduce $$,
  "i": myVar.a reduce ($$ + $),
  "j": myVar.a reduce ((item, acc) -> acc + item),
  "k": myVar.a reduce ((item, acc = 3) -> acc + item),
  "l": myVar.a reduce $$,
  "m": myVar.b reduce ($$ ++ $),
  "n": myVar.b reduce ((item, acc) -> acc ++ item),
  "o": myVar.b reduce ((item, acc = "z") -> acc ++ item),
  "p": myVar.b reduce $$,
  "q": myVar.c reduce ((item, acc = "z") -> acc ++ item.letter),
  "r": myVar.c reduce $$,
  "s": myVar.d reduce ($$ and $),
  "t": myVar.d reduce ((item, acc) -> acc and item),
  "u": myVar.d reduce ((item, acc = false) -> acc and item),
  "v": myVar.d reduce $$,
  "w": ([0, 1, 2, 3, 4] reduce ((item, acc = {}) -> acc ++ { a: item })) pluck $,
  "x": [] reduce $$,
  "y": [] reduce ((item,acc = 0) -> acc + item)
}