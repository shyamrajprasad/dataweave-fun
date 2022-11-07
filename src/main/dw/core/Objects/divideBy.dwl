%dw 2.0
import divideBy from dw::core::Objects
output application/json
---
{ "a": 1, "b": true, "a": 2, "b": false, "c": 3 } divideBy 2 