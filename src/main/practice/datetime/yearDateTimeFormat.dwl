%dw 2.0
var myDateTime = ("2020-11-10T13:44:12.283-08:00" as DateTime)
output application/json
---
{
    "dateTime" : myDateTime,
    "era-G" : myDateTime as String { format: "G"},
    "year-u" : myDateTime as String {format: "u"},
    "year-uu" : myDateTime as String {format: "uu"},
  //y is for use with the era (BCE or CE). Generally, use u, instead.
    "year-y" : myDateTime as String { format: "y"},
    "year-yy" : myDateTime as String { format: "yy"},
    "dayOfYear-D" : myDateTime as String { format: "D"}
}    