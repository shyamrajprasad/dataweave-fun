%dw 2.0
import * from dw::core::Objects
var myVar = read('<xml attr="x"><a>true</a><b>1</b></xml>', 'application/xml')
output application/json
---
{ "entrySet" : entrySet(myVar) }