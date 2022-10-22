%dw 2.0
import * from dw::core::Types
type AType = String {format: "YYYY-MM-dd"}
output application/json
---
{
   a: baseTypeOf(AType)
}