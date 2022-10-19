%dw 2.0
output application/json
---
{ price: random() * 1000 }