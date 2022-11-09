%dw 2.0
import mergeWith from dw::core::Objects
output application/json
---
{ "a" : true, "b" : 1} mergeWith { "a" : false, "c" : "Test"} 