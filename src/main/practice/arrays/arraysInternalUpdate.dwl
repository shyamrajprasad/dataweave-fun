%dw 2.0
//https://help.mulesoft.com/s/question/0D52T00006IxxEoSAJ/how-to-use-the-update-function-to-update-a-key-value-from-an-array-of-objects
var input2 = [
  {
    "source": "CAN",
    "target": "Canada"
  },
  {
    "source": "IND",
    "target": "India"
  }
]
var countryMapping = {(input2 map (
    ($.source) : $.target
))}
output application/json  
---
payload map ($ mapObject ((value, key, index) -> 
  (key): 
    if (key as String == "a")
      value map ($ update {
        case .city -> countryMapping[$]
      }
      )
    else
      value
))