%dw 2.0
import * from dw::core::Dates
output application/json
---
{
  "atBeginningOfMonthDateTime": atBeginningOfMonth(|2020-10-06T18:23:20.351-03:00|),
  "atBeginningOfMonthLocalDateTime": atBeginningOfMonth(|2020-10-06T18:23:20.351|),
  "atBeginningOfMonthDate": atBeginningOfMonth(|2020-10-06|),
}

