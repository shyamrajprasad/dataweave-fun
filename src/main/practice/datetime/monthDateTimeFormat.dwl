%dw 2.0
var myDateTime = ("2020-11-10T13:44:12.283-08:00" as DateTime)
output application/json
---
{

    "monthOfYear-MMMM": myDateTime as String { format: "MMMM" },
    "monthOfYear-MMM": myDateTime as String { format: "MMM" },
    "monthOfYear-MM": myDateTime as String { format: "MM" },
    "monthOfYear-M": myDateTime as String { format: "M" },
    "monthOfYear-LL": myDateTime as String { format: "LL" },
    "monthOfYear-L": myDateTime as String { format: "L" },
    "dayOfMonth-d": myDateTime as String { format: "d" }
}