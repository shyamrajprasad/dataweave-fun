%dw 2.0
output application/json writeAttributes =true
//xpath3('root/BATCH/ENTITY/TABLE[@name=\'TR_TRN\']/ROWS/ROW/COLUMN_DATA[@ordinal=\'0\']/@value',payload, "STRING")
var x = (payload.root.BATCH.ENTITY.*TABLE filter ((item, index) -> item.@name == "TR_TRN")
)[0].ROWS.ROW 
---
(x filterObject ((value, key, index) -> value.@ordinal =="0")).COLUMN_DATA.@value