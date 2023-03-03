%dw 2.0
var myDateTime = ("2020-11-10T13:44:12.283-08:00" as DateTime)
output application/json
---
{
    "amORpm-a" : myDateTime as String {format: "a"},
  // "h" outputs 12 o'clock as 12. Other hours match "K" output.
    "hourOfDay1to12-h" : myDateTime as String {format: "h"},
  // "K" outputs 12 o'clock as 0. Other hours match "h" output.
    "hourOfDay0to11-K" : myDateTime as String {format: "K"},
    "clockHourOfAmPm-k" : myDateTime as String {format: "k"},
    "hourOfDay0to23-H" : myDateTime as String {format: "H"},
    "minuteOfHour-m" : myDateTime as String {format: "m"},
    "secondOfMinute-s" : myDateTime as String {format: "s"},
    "fractionOfSecond-S" : myDateTime as String {format: "S"},
    "millisecondOfDay-A" : myDateTime as String {format: "A"},
    "nanosecondCountOfSecond-n" : myDateTime as String {format: "n"},
    "nanosecondCountOfDay-N" : myDateTime as String {format: "N"}
 }

