%dw 2.0
import * from dw::core::Periods
output application/json
---
{
   nextMinute: |2020-10-05T20:22:34.385Z| + minutes(1),
   previousMinute: |2020-10-05T20:22:34.385Z| - minutes(1),
   decimalInputPeriod: minutes(4.555),
   wholeNumberInputPeriod: minutes(4),
   addNegativeValue: minutes(-1) + minutes(2)
}