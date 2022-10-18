%dw 2.0
import fromRadixNumber from dw::core::Numbers
output application/json
---
{
    a: fromRadixNumber("10", 2),
    b: fromRadixNumber("FF", 16)
}