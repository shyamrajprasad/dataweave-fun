%dw 2.0
import toHex from dw::core::Numbers
output application/json
---
{
    a: toHex(-1),
    b: toHex(100000000000000000000000000000000000000000000000000000000000000),
    c: toHex(0),
    d: toHex(null),
    e: toHex(15),
}