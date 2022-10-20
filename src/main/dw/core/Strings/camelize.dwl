%dw 2.0
import * from dw::core::Strings
output application/json
---
{
  "a" : camelize("customer_first_name"),
  "b" : camelize("_name_starts_with_underscore")
}