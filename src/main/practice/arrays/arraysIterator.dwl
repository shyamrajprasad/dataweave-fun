%dw 2.0
//https://help.mulesoft.com/s/question/0D52T00006IybE8SAJ/retrieve-field-values-from-json
import substringBefore from dw::core::Strings
output application/json  
---
payload flatMap ((item, index) -> do {
    var x = item.IP_FieldName splitBy ":" map (substringBefore($, "[0]"))
    var y = item.OP_FieldName splitBy ":"
    ---
    x map ((item1, index1) -> {
      "ID": item.ID,
      "IP_FieldName": item1,
      "OP_ArrayName": item.OP_ArrayName,
      "OP_Type": item.OP_Type,
      "OP_FieldName": y[index1],
      "IP_Parent": item.IP_Parent,
      "OP_ParentNode": item.OP_ParentNode
    })
  })