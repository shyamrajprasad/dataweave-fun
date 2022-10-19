%dw 2.0
output application/json
---
{ "ssn" : "987-65-4321" replace /[0-9]/ with("x") }