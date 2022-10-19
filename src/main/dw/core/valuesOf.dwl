%dw 2.0
output application/json
---
{ "valuesOf" : valuesOf({a: true, b: 1}) }