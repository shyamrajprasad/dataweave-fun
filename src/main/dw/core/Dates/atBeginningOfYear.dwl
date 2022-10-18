%dw 2.0
import * from dw::core::Dates
output application/json
---
{
  atBeginningOfYearDateTime: atBeginningOfYear(|2020-10-06T18:23:20.351-03:00|),
  atBeginningOfYearLocalDateTime: atBeginningOfYear(|2020-10-06T18:23:20.351|),
  atBeginningOfYearDate: atBeginningOfYear(|2020-10-06|)
}

