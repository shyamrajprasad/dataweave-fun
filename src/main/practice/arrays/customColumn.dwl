%dw 2.0
output application/json
var inputPayload = [
  {
    "HeaderContNum": [
      "00501",
      "00502"
    ],
    "PODate": [
      "2022-03-31T00:00:00+05:30",
      "2022-03-31T00:00:00+05:30"
    ],
    "GroupTo": [
      "5474573284",
      "5474573285"
    ]
  }
]
---
inputPayload flatMap ((item, index)->
0 to sizeOf(valuesOf(item)[0])-1 map(    
item mapObject ((value, key, index) -> 
    (key) : value[$$] 
    )
))