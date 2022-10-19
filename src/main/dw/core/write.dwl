%dw 2.0
output application/xml
---
{ "output" : write(payload, "application/csv", {"header":true, "separator" : "|"}) }