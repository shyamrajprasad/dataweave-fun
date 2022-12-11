%dw 2.0
output application/json
fun dynamicValue(value) = 
    if (value is Object) value mapObject ($$): dynamicValue($)
    else if  (value is String and (value contains "<payload.")) dynamicSelector( value[1 to -2] splitBy  ".") else value
fun dynamicSelector(x)=x reduce ((item, accumulator =payload[x[0]] ) -> 
  if(item == "payload") payload[item] else accumulator[item]
) 
---
payload.mapper mapObject ((value, key, index) -> 
            (key):dynamicValue(value))