%dw 2.0
output application/json
---
{"a":"b","c":"d"} mapObject (value,key,index) -> { (index) : { (value):key} }