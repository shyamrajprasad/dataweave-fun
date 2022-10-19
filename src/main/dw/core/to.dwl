%dw 2.0
output application/json
var myVar = "Hello World!"

---
{ myRange: 1 to 10 ,
    indices2to6: myVar[2 to 6],
    indicesFromEnd: myVar[6 to -1],
    reversal: myVar[11 to -0]
}
