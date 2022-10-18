%dw 2.0
output application/json
---
[isInteger(1), isInteger(2.0), isInteger(2.2), isInteger("1")]