%dw 2.0
import divideBy from dw::core::Arrays
output application/json
var arrays = [1,2,3,4]
---
arrays divideBy 2