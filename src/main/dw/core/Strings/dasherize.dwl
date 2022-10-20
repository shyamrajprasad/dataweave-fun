%dw 2.0
import * from dw::core::Strings
output application/json
---
{
  "a" : dasherize("customer"),
  "b" : dasherize("customer_first_name"),
  "c" : dasherize("customer NAME"),
  "d" : dasherize("customerName")
}