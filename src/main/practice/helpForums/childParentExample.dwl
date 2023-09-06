%dw 2.0
output application/json
var x = payload.results groupBy $.conceptId
var y =  payload.results groupBy $.parentConceptIds[0]
fun addChild(item) =
 item ++ {
 "children": y[item.conceptId as String] default [] map (addChild($))
 }
 var parentChildId = "d6550fa8-a24f-4cc9-9bc9-4abbc21d18ea"
---
x[parentChildId] map (
    addChild($)
)