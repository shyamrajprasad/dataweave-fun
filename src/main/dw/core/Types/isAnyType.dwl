%dw 2.0
import * from dw::core::Types
type AAny = Any
output application/json
---
{
   a: isAnyType(AAny),
   b: isAnyType(Any),
   c: isAnyType(String),
}