%dw 2.0
import * from dw::core::Strings
output application/json
---
{
  "a": substringBefore(null, "'"),
  "b": substringBefore("", "-"),
  "c": substringBefore("abc", "b"),
  "d": substringBefore("abc", "c"),
  "e": substringBefore("abc", "d"),
  "f": substringBefore("abc", "")
}