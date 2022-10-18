%dw 2.0
import toBinary from dw::core::Numbers
output application/json
---
{
    a: toBinary(-2),
    b: toBinary(100000000000000000000000000000000000000000000000000000000000000),
    c: toBinary(0),
    d: toBinary(null),
    e: toBinary(2),
}
