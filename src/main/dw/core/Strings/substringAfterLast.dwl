%dw 2.0
import * from dw::core::Strings
output application/json
---
{
  "a": substringAfterLast(null, "'"),
  "b": substringAfterLast("", "-"),
  "c": substringAfterLast("abc", "b"),
  "d": substringAfterLast("abcba", "b"),
  "e": substringAfterLast("abc", "d"),
  "f": substringAfterLast("abc", "")
}