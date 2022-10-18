%dw 2.0
output  application/json
---
{ "isOdd" : [ isOdd(0), isOdd(1), isOdd(2+2) ] }