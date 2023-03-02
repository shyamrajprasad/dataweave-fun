%dw 2.0
var myDateTime = ("2020-11-10T13:44:12.283-08:00" as DateTime)
output application/json
---
{
    "dayOfWeekAbbreviatedName-E" : myDateTime as String {format: "E"},
    "dayOfWeekFullName-EEEE" : myDateTime as String {format: "EEEE"},
    "localizedDayOfWeek-eeee" : myDateTime as String {format: "eeee"},
    "localizedDayOfWeek-eee" : myDateTime as String {format: "eee"},
    "localizedDayOfWeek-ee" : myDateTime as String {format: "ee"},
    "localizedDayOfWeek-e" : myDateTime as String {format: "e"},
    "localizedDayOfWeek-cccc" : myDateTime as String {format: "cccc"},
    "localizedDayOfWeek-ccc" : myDateTime as String {format: "ccc"},
    "localizedDayOfWeek-c" : myDateTime as String {format: "c"}
}