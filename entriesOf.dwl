%dw 2.0
var myVar = read('<xml attr="x"><a>true</a><b>1</b></xml>', 'application/xml')
output application/json
---
{ "entriesOf" : entriesOf(myVar) }