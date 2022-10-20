%dw 2.0
import isAlpha from dw::core::Strings
output application/json
---
{
  "a": isAlpha(null),
  "b": isAlpha(""),
  "c": isAlpha("  "),
  "d": isAlpha("abc"),
  "e": isAlpha("ab2c"),
  "f": isAlpha("ab-c")
}