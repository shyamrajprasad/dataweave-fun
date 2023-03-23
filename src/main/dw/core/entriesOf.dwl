%dw 2.0
var inputXml = read('<xml attr="x"><a>true</a><b>1</b></xml>', 'application/xml')
output application/json
---
{ "entriesOf": entriesOf(inputXml) }

