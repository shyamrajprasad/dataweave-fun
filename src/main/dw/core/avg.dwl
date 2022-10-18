%dw 2.0
output application/json
---
{ a: avg([1, 1000]), b: avg([1, 2, 3]) }