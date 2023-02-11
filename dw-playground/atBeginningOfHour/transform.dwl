%dw 2.0
import * from dw::core::Dates
output application/json
---
{
   "atBeginningOfHourDateTime": atBeginningOfHour(|2020-10-06T18:23:20.351-03:00|),
   "atBeginningOfHourLocalDateTime": atBeginningOfHour(|2020-10-06T18:23:20.351|),
   "atBeginningOfHourLocalTime": atBeginningOfHour(|18:23:20.351|),
   "atBeginningOfHourTime": atBeginningOfHour(|18:23:20.351-03:00|)
}