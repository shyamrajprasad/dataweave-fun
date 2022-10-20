%dw 2.0
import isNumeric from dw::core::Strings
output application/json
---
{
  "a": isNumeric(null),
  "b": isNumeric(""),
  "c": isNumeric("  "),
  "d": isNumeric("123"),
  "e": isNumeric("१२३"),
  "f": isNumeric("12 3"),
  "g": isNumeric("ab2c"),
  "h": isNumeric("12-3"),
  "i": isNumeric("12.3"),
  "j": isNumeric("-123"),
  "k": isNumeric("+123")
}