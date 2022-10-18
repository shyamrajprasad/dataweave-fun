%dw 2.0
output application/json
type DateFactory = { day: Number, month: Number, year: Number }
type DateTimeFactory = DateFactory & LocalTimeFactory & Zoned
type LocalDateTimeFactory = DateFactory & LocalTimeFactory
type LocalTimeFactory = { hour: Number, minutes: Number, seconds: Number }
type TimeFactory = LocalTimeFactory & Zoned
type Zoned = { timeZone: TimeZone }
---
{ timeZone: |-03:00| } is Zoned