%dw 2.0
var myDateTime = ("2020-11-10T13:44:12.283-08:00" as DateTime)
output application/json
---
{
    "quarterOfYear-qqq" : myDateTime as String {format: "qqq"},
    "quarterOfYear-qq" : myDateTime as String {format: "qq"},
    "quarterOfYear-q" : myDateTime as String {format: "q"},
    "quarterOfYear-QQQQ" : myDateTime as String {format: "QQQQ"},
    "quarterOfYear-QQQ" : myDateTime as String {format: "QQQ"},
    "quarterOfYear-QQ" : myDateTime as String {format: "QQ"},
    "quarterOfYear-Q" : myDateTime as String {format: "Q"}
}