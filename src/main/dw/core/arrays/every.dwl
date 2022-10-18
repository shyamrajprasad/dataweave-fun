%dw 2.0
import * from dw::core::Arrays
output application/json
---
{
   ok: [1,1,1] every ($ == 1),
   err : [1,2,3] every ($ == 1)
}   

  