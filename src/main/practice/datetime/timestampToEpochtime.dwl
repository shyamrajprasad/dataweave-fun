%dw 2.0
output application/json
var humanDate= "2023-06-25T02:31:26Z"
---
humanDate as DateTime  as Number {unit: "seconds" }