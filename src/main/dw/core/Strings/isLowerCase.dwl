%dw 2.0
import isLowerCase from dw::core::Strings
output application/json
---
{
  "a": isLowerCase(null),
  "b": isLowerCase(""),
  "c": isLowerCase("  "),
  "d": isLowerCase("abc"),
  "e": isLowerCase("aBC"),
  "f": isLowerCase("a c"),
  "g": isLowerCase("a1c"),
  "h": isLowerCase("a/c")
}