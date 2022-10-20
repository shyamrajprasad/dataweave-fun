%dw 2.0
import * from dw::core::Objects
output application/json
var obj = {
  "a": 1,
  "b": 2,
  "c": 5,
  "d": 1
}
---
obj takeWhile ((value, key) ->  value < 3)