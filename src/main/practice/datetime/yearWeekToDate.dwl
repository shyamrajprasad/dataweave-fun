%dw 2.0
output application/json
import * from dw::core::Dates
import * from dw::core::Periods
var yearWeekString = "201601"
fun beginningOfWeekYear(year: Number, week: Number)=
    atBeginningOfWeek(atBeginningOfWeek(date({ year: year, month: 1, day: 1})) +  days(week * 7 ))
---
{
    "201601": beginningOfWeekYear(yearWeekString[0 to 3] as Number, yearWeekString[4 to -1] as Number),
    "202041": beginningOfWeekYear(2020, 41)
} 