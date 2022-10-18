%dw 2.0
output application/json
---
[ isDecimal(1.1), isDecimal(1), isDecimal("1.1") ]