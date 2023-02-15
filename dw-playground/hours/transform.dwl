%dw 2.0
import * from dw::core::Periods
output application/json
---
{
   nextHour: |2020-10-05T20:22:34.385Z| + hours(1),
   previousHour: |2020-10-05T20:22:34.385Z| - hours(1),
   threeHoursLater: |20:22| + hours(3),
   addDecimalInput: |20:22| + hours(3.5),
   decimalInputAsPeriod : hours(4.555),
   fourHourPeriod : hours(4),
   addNegativeValue: hours(-1) + hours(2)
}