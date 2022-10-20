%dw 2.0
import substringBy from dw::core::Strings
output application/json
---
"hello~world=here_data-weave" substringBy $ == "~" or $ == "=" or $ == "_"