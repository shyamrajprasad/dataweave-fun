%dw 2.0
output appllication/json
---
payload.Applications.*Application map ((item, index) -> 
    {primaryID:item.@primaryID,
    childField1:item.childLayer.field1,
    childField2: item.childLayer.field2
    }
)