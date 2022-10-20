%dw 2.0
import * from dw::core::Strings
output application/json
---
{
  "a": wrapWith(null, "'"),
  "b": wrapWith("", "'"),
  "c": wrapWith("ab", "x"),
  "d": wrapWith("'ab'", "'"),
  "e": wrapWith("ab", "'")
}