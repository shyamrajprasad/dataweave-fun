%dw 2.0
import * from dw::core::Strings
output application/json
---
{
  "a" : ordinalize(1),
  "b": ordinalize(2),
  "c": ordinalize(5),
  "d": ordinalize(103)
}