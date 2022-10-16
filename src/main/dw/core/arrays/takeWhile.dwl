%dw 2.0
import * from dw::core::Arrays
output application/json
var arr = [0,1,2,1]
---
arr takeWhile $ <= 1