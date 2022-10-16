%dw 2.0
import * from dw::core::Arrays
output application/json
var arr = [0,1,3,2,1]
---
arr dropWhile $ < 3