%dw 2.0
import toRadixNumber from dw::core::Numbers
output application/json
---
{
    a: toRadixNumber(2, 2),
    b: toRadixNumber(255, 16)
}