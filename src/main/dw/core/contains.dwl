%dw 2.0
output application/json
---
{
    a: [ 1, 2, 3, 4 ] contains(2),
    ContainsRequestedItem: payloadOrder.root.*order.*items contains "3",
    c: "mulesoft" contains("mule"),
    ContainsString : payloadMyString.root.mystring contains("me"),
    ContainsRegularExpression: contains("mulesoft", /[e-g]/),
    ContainsStringExpression: payloadMyString.root.mystring contains /s[t|p]rin/
}