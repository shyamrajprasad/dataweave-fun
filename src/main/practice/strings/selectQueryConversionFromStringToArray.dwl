%dw 2.0
output application/json
import unwrap from dw::core::Strings
 
var x = "'1111198', '11111100', '11111151', '11111162'"
---
x splitBy  ","  map(unwrap(trim($), "'"))