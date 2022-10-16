%dw 2.0
import * from dw::core::Arrays
output application/json
---
"countBy" : [1, 2, 3, 4] countBy (isEven($)) 