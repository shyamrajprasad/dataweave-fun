%dw 2.0
import * from dw::core::Periods
output application/json
---
{
   tomorrow: |2020-10-05T20:22:34.385Z| + days(1),
   yesterday: |2020-10-05T20:22:34.385Z| - days(1),
   decimalDaysPlusQuarter:  |2020-10-05T00:00:00.000Z| + days(0.25),
   decimalDaysPlusHalf:  |2020-10-05T00:00:00.000Z| + days(0.5),
   decimalDaysPlusThreeQuarters:  |2020-10-05T00:00:00.000Z| + days(0.75),
   decimalInputAsPeriod : days(4.555),
   fourDayPeriod: days(4),
   negativeValue: days(-1)
}