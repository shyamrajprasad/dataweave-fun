%dw 2.0
output application/json
var x = payload groupBy ($.PG default "0")
fun addChild(item) =
 item ++ {
 "children": x[item.PRG as String] default [] map (addChild($))
 }
---
x."0" map (
    addChild($) 
)
