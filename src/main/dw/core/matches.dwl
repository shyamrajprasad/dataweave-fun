%dw 2.0
output application/json
---
[ ("admin123" matches /a.*\d+/), ("admin123" matches /^b.+/) ]