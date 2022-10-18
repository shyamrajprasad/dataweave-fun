%dw 2.0
output  application/json
---
{ "isEven" : [ isEven(0), isEven(1), isEven(1+1) ] }