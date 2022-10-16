%dw 2.0
import * from dw::core::Arrays
output application/json
---
[1,2,3] every ($ == 1)
  