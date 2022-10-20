%dw 2.0
import withMaxSize from dw::core::Strings
output application/json
---
{
   a: "123" withMaxSize 10,
   b: "123" withMaxSize 3,
   c: "123" withMaxSize 2,
   d: "" withMaxSize 0,
   e: null withMaxSize 23,
}