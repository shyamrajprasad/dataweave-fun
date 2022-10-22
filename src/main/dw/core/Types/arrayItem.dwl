%dw 2.0
import * from dw::core::Types
type ArrayOfString = Array<String>
type ArrayOfNumber = Array<Number>
type ArrayOfAny = Array<Any>
type ArrayOfAnyDefault = Array
output application/json
---
{
   a: arrayItem(ArrayOfString),
   b: arrayItem(ArrayOfNumber),
   c: arrayItem(ArrayOfAny),
   d: arrayItem(ArrayOfAnyDefault)
}