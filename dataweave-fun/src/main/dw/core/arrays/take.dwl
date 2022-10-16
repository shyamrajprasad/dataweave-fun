%dw 2.0
import * from dw::core::Arrays
var users = ["Shyam", "Raj", "Prasad"]
output application/json
---
take(users, 2)