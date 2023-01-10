%dw 2.0
import * from dw::core::Strings
output application/json
---
 {
     a: reverse("Shyam Raj Prasad"),
     b: reverse(null),
     c: reverse("")
 }