%dw 2.0
output application/json
---
{ "namesOf" : namesOf({ "a" : true, "b" : 1}) }