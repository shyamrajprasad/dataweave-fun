%dw 2.0
output application/json
---
{ a: max([1, 1000]), b: max([1, 2, 3]), c: max([1.5, 2.5, 3.5]) }