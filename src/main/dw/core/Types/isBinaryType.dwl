%dw 2.0
import * from dw::core::Types
type ABinary = Binary
output application/json
---
{
   a: isBinaryType(ABinary),
   b: isBinaryType(Binary),
   c: isBinaryType(String),
}