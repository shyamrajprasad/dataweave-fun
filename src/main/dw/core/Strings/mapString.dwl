%dw 2.0
import * from dw::core::Strings
output application/json
---
{ balance: ("\$234" mapString if (isNumeric($)) "~" else $) }