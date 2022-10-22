%dw 2.0
output application/json
import * from dw::core::Types
type AFunction = (String, Number) -> Number
type AFunction2 = () -> Number
---
{
    a: functionReturnType(AFunction),
    b: functionReturnType(AFunction2)
}