%dw 2.0
import * from dw::core::Strings
output application/json
var text = "hello world!"
---
substring(text, 1, 5)