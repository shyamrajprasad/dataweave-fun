%dw 2.0
output application/json
---
{
    //Returns true if input contains a given value
    a: [ 1, 2, 3, 4 ] contains(2),
    ContainsRequestedItem: payloadOrder.root.*order.*items contains "3",
    //string contains a given substring. Returns true or false.
    c: "mulesoft" contains("mule"),
    ContainsString : payloadMyString.root.mystring contains("me"),
    //Returns true if a string contains a match to a regular expression, false if not.
    ContainsRegularExpression: contains("mulesoft", /[e-g]/),
    ContainsStringExpression: payloadMyString.root.mystring contains /s[t|p]rin/
}


