%dw 2.0
import * from dw::core::Strings
output application/json
---
{
  "a": substringAfter(null, "'"),
  "b": substringAfter("", "-"),
  "c": substringAfter("abc", "b"),
  "d": substringAfter("abcba", "b"),
  "e": substringAfter("abc", "d"),
  "f": substringAfter("abc", "")
}