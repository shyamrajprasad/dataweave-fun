%dw 2.0
output application/json
---
{ "hyphenate" : ["a","b","c"] joinBy "-" }