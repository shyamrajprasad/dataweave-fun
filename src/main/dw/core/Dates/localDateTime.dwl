%dw 2.0
import * from dw::core::Dates
output application/json
---
localDateTime({year: 2012, month: 10, day: 11, hour: 12, minutes: 30, seconds: 40})
