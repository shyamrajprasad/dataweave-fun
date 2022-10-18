%dw 2.0
output application/json
---
[ [3,5], [0.9,5.5] ] flatMap (value, index) -> value