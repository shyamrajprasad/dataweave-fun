%dw 2.0
import fromBinary from dw::core::Numbers
output application/json
---
{
    a: fromBinary("-10"),
    b: fromBinary("11111000111010111010110100101011100001001110000011010101100010111101001011100000100010011000011101100101101001111101111010110010010100110010100100000000000000000000000000000000000000000000000000000000000000"),
    c: fromBinary(0),
    d: fromBinary(null),
    e: fromBinary("100"),
}