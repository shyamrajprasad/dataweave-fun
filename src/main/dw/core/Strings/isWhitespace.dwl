%dw 2.0
import isWhitespace from dw::core::Strings
output application/json
---
{
  "a": isWhitespace(null),
  "b": isWhitespace(""),
  "c": isWhitespace("  "),
  "d": isWhitespace("abc"),
  "e": isWhitespace("ab2c"),
  "f": isWhitespace("ab-c")
}