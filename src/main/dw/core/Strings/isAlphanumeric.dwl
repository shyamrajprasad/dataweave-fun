%dw 2.0
import isAlphanumeric from dw::core::Strings
output application/json
---
{
  "a": isAlphanumeric(null),
  "b": isAlphanumeric(""),
  "c": isAlphanumeric("  "),
  "d": isAlphanumeric("abc"),
  "e": isAlphanumeric("ab c"),
  "f": isAlphanumeric("ab2c"),
  "g": isAlphanumeric("ab-c")
}