%dw 2.0
output application/xml
---
read('{ "hello" : "world" }','application/json')