%dw 2.0
import * from dw::core::Types
type AType = Array<String>
output application/json
---
{
   a: isArrayType(AType),
   b: isArrayType(Boolean),
}