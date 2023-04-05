%dw 2.0
output application/json
---
{
    a:[ isLeapYear(|2016-10-01T23:57:59|), isLeapYear(|2017-10-01T23:57:59|) ],
    b: [ isLeapYear(|2016-10-01|), isLeapYear(|2017-10-01|) ],
    c: [ |2016-10-01T23:57:59-03:00|, |2016-10-01T23:57:59Z| ] map isLeapYear($)
}