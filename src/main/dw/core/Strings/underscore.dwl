%dw 2.0
import * from dw::core::Strings
output application/json
---
{
   "a" : underscore("customer"),
   "b" : underscore("customer-first-name"),
   "c" : underscore("customer NAME"),
   "d" : underscore("customerName")
}