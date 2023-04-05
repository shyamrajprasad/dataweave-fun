%dw 2.0
import isNumeric from dw::core::Strings
output application/json
---
payload map ((item, index) -> 
            do {
               	var sourceDataNumber = item.SourceData splitBy ";" map ($ filter isNumeric($))
               	---
                { id: item.id } ++
        
                        { ((1 to 10) map ({
                                        ("attr" ++ $ as String) : (sourceDataNumber contains ($ as String))
                                    }))}
            }
    
        )