%dw 2.0
import substringBy from dw::core::Strings
output application/json
---
"hello~world=here_muleys" substringBy $ == "~" or $ == "=" or $ == "_"