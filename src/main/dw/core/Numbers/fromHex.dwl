%dw 2.0
import fromHex from dw::core::Numbers
output application/json
---
{
    a: fromHex("-1"),
    b: fromHex("3e3aeb4ae1383562f4b82261d969f7ac94ca4000000000000000"),
    c: fromHex(0),
    d: fromHex(null),
    e: fromHex("f"),
}