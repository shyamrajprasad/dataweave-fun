%dw 2.0
import * from dw::core::Periods
output application/json
---
{
  nextMonth: |2020-10-05T20:22:34.385Z| + months(1),
  fourMonthPeriod : months(4),
  addNegativeValue: months(-1) + months(2)
}