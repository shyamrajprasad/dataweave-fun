%dw 2.0
import * from dw::core::Periods
output application/json
---
{
  nextYear: |2020-10-05T20:22:34.385Z| + years(1),
  fourYearPeriod: years(4),
  addNegativeValue: years(-1) + years(2)
}