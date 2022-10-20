%dw 2.0
import isUpperCase from dw::core::Strings
output application/json
---
{
  "a": isUpperCase(null),
  "b": isUpperCase(""),
  "c": isUpperCase("  "),
  "d": isUpperCase("ABC"),
  "e": isUpperCase("aBC"),
  "f": isUpperCase("A C"),
  "g": isUpperCase("A1C"),
  "h": isUpperCase("A/C")
}