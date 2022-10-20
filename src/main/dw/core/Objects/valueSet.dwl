%dw 2.0
import * from dw::core::Objects
output application/json
---
{ "valueSet" : valueSet({a: true, b: 1}) }