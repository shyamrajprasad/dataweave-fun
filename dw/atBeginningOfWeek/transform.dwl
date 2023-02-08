%dw 2.0
import * from dw::core::Dates
output application/json
---
{
  atBeginningOfWeekDateTime: atBeginningOfWeek(|2020-10-06T18:23:20.351-03:00|),
  atBeginningOfWeekLocalDateTime: atBeginningOfWeek(|2020-10-06T18:23:20.351|),
  atBeginningOfWeekDate: atBeginningOfWeek(|2020-10-06|)
}