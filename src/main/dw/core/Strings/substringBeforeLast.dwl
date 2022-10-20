%dw 2.0
import * from dw::core::Strings
output application/json
---
{
  "a": substringBeforeLast(null, "'"),
  "b": substringBeforeLast("", "-"),
  "c": substringBeforeLast("abc", "b"),
  "d": substringBeforeLast("abcba", "b"),
  "e": substringBeforeLast("abc", "d"),
  "f": substringBeforeLast("abc", "")
}