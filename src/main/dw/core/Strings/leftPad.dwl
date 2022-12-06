%dw 2.0
import * from dw::core::Strings
output application/json
---
{
   "a": leftPad(null, 3),
   "b": leftPad("", 3),
   "c": leftPad("bat", 5),
   "d": leftPad("bat", 3),
   "e": leftPad("bat", -1),
   "f": leftPad("123",6,"0")
}