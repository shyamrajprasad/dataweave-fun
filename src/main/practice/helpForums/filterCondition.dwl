%dw 2.0
output application/json
var x = payload groupBy $.ORDER_ID
var productIds =["1","2"]
---
valuesOf(x) flatMap (
    do {
	var allProductCheck = sizeOf($.PRODUCT_ID filter(productIds contains $))==2
	---
        $ filter((allProductCheck and !(productIds contains $.PRODUCT_ID)) or !allProductCheck)
    }

)