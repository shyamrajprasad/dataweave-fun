%dw 2.0
import * from dw::core::Dates
output application/json
---
{
  atBeginningOfWeekDateTime: atBeginningOfWeek(|2023-02-09T18:23:20.351-03:00|),
  atBeginningOfWeekLocalDateTime: atBeginningOfWeek(|2023-02-09T18:23:20.351|),
  atBeginningOfWeekDate: atBeginningOfWeek(|2023-02-09|)
}