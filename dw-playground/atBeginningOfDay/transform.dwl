%dw 2.0
import * from dw::core::Dates
output application/json
---
{
  "atBeginningOfDayDateTime": atBeginningOfDay(|2020-10-06T18:23:20.351-03:00|),
  "atBeginningOfDayLocalDateTime": atBeginningOfDay(|2020-10-06T18:23:20.351|)
}