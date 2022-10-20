%dw 2.0
import * from dw::core::Strings
output application/json
---
{
  "a": rightPad(null, 3),
  "b": rightPad("", 3),
  "c": rightPad("bat", 5),
  "d": rightPad("bat", 3),
  "e": rightPad("bat", -1)
}