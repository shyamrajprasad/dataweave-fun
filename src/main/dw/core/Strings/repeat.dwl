%dw 2.0
import * from dw::core::Strings
output application/json
---
{
  "a": repeat("e", 0),
  "b": repeat("e", 3),
  "c": repeat("e", -2)
}