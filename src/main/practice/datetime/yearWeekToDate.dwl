%dw 2.0
output application/json
var date = '201601'
import * from dw::core::Periods
import * from dw::core::Dates
---
atBeginningOfWeek((date[0 to 3]++ "-01-01")  as Date + days(date [4 to -1] * 7))