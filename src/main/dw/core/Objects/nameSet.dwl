%dw 2.0
import * from dw::core::Objects
output application/json
---
{ "nameSet" : nameSet({ "a" : true, "b" : 1}) }