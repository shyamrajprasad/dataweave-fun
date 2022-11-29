%dw 2.0
import * from dw::core::Strings
output application/json
---
{
  "a" : capitalize("customer"),
  "b" : capitalize("customer_first_name"),
  "c" : capitalize("customer NAME"),
  "d" : capitalize("customerName"),
  "e" : capitalize(0),
  "f" : capitalize(null)
}