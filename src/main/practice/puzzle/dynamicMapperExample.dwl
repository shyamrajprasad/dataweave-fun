%dw 2.0
var key = 'contact.address'
output application/json 
var inputPayload =  {
  "contact": {    
    "firstname": "John",
    "lastname": "Doe",
    "address": {
      "line1": "123 street",
      "city": "Denver"
    }
  }
}
---
key splitBy "." reduce ((item, accumulator = inputPayload) -> accumulator[item])