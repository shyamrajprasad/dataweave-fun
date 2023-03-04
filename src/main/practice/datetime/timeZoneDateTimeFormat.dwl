%dw 2.0
var myDateTime = ("2020-11-10T13:44:12.283-08:00" as DateTime)
output application/json
---
{
    "timeZoneID-VV" : myDateTime as String {format: "VV"},
    "timeZoneName-zz" : myDateTime as String {format: "zz"},
    "localizedZoneOffset-zzz" : myDateTime as String {format: "zzz"},
    "localizedZoneOffset-O" : myDateTime as String {format: "O"},
    "timeZoneOffsetZforZero-XXX" : myDateTime as String {format: "XXX"},
    "timeZoneOffsetZforZero-XX" : myDateTime as String {format: "XX"},
    "timeZoneOffsetZforZero-X" : myDateTime as String {format: "X"},
    "timeZoneOffset-xxx" : myDateTime as String {format: "xxx"},
    "timeZoneOffset-xx" : myDateTime as String {format: "xx"},
    "timeZoneOffset-x" : myDateTime as String {format: "x"},
    "timeZoneOffset-Z" : myDateTime as String {format: "Z"}
 }