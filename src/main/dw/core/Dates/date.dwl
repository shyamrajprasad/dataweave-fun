%dw 2.0
import * from dw::core::Dates
output application/json
---
{
   newDate: date({year: 2012, month: 10, day: 11})
}