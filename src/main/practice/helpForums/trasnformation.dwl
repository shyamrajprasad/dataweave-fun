//https://help.mulesoft.com/s/question/0D52T00006PNNJ6SAP/how-to-transform-the-key-and-value-using-payload-map-function-for-an-array
%dw 2.0
output application/json
var y = payload groupBy $.svcChargeDesc
var names = namesOf(y)
---
{
  "data": {
    "APY": {(names map (
        ($) : y[$][0].APY 
    ))},
    "Rate": {(names map (
        ($) : y[$][0].rate 
    ))},
    "Tiers": {(names map (
        ($) : y[$][0].tieredDesc 
    ))} mapObject ((value, key, index) -> 
        (key) : if(value == "No Limit") "NA" else "\$$(value as Number)"
    ),
    "Today": now() as Date {format : "M/d/yyyy"}
  },
  "success": true
}
