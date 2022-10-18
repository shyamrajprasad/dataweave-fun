%dw 2.0
output application/json
---
{
    arrays:[ isEmpty([]), isEmpty([1]) ],
    string: [ isEmpty(""), isEmpty("DataWeave") ],
    object:[ isEmpty({}), isEmpty({name: "DataWeave"}) ],
     "nullValue" : isEmpty(null) 
     
}
    