%dw 2.0
import * from dw::core::Dates
output application/json
---
{
  newTime: time({ hour: 12, minutes: 30, seconds: 40 , timeZone: |-03:00|})
}