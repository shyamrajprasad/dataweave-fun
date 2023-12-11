%dw 2.0
output application/json
import * from dw::core::Strings
var y = payload.characteristics filter ((item, index) -> !(item.name startsWith  "frame"))
---
characteristics: y ++ (payload.characteristics filter ((item, index) -> (item.name startsWith  "frame"))
 groupBy ((item, index) -> substringBefore(item.name,"." )) mapObject ((value, key, index) -> 
    do {
	var frame = {(value map (($.name) : $.value))}
	---
value:{
        name: (key),
        "value": 
        frame filterObject ((value, key, index) -> sizeOf((key) find ".")==1 ) ++
        {
        
        "name": (namesOf(frame filterObject ((value, key, index) -> sizeOf((key) find ".")==2 ))[0] splitBy  ".") [0 to 1] joinBy  ".",
        "value": frame filterObject ((value, key, index) -> sizeOf((key) find ".")==2 ) ,
        "valueType": "object"
      },
      "valueType": "object"
    
    }
}
 )).*value
