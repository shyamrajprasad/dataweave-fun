%dw 2.0
import * from dw::core::Strings
output application/json
---
 {
     a: reverse("Mariano"),
     b: reverse(null),
     c: reverse("")
 }