%dw 2.0
output application/json
---
payload map ((item, index) -> 
   do {
	var nameVar = item.characters groupBy $.name
	---
    { ref : item.id,
    amount: nameVar["reward"].value[0].value[0] as Number,
    reddem: nameVar["redeem"].value[0].value[0] 
   }
 }
)