%dw 2.0
output application/json
import * from dw::core::Periods
---
{
   dayBeforeDateTime: |2020-10-05T20:22:34.385Z| - period({days:1}),
   dayAfterDate: |2020-10-05| + period({days:1}),
   yearMonthDayAfterDate: |2020-10-05| + period({years:1, months:1, days:1}),
   emptyPeriod: period({}),
   constructPeriod: period({years:4, months:11, days:28}),
   selectMonthsFromPeriod: period({years:4, months:11, days:28}).months
}