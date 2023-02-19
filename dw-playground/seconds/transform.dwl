%dw 2.0
import * from dw::core::Periods
output application/json
---
{
  nextSecond: |2020-10-05T20:22:34.385Z| + seconds(1),
  previousSecond: |2020-10-05T20:22:34.385Z| - seconds(1),
  decimalInputPeriod: seconds(4.555),
  wholeNumberInputPeriod: seconds(4),
  addNegativeValue: seconds(-1) + seconds(2)
}