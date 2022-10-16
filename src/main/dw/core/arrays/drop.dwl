%dw 2.0
import * from dw::core::Arrays
var users = ["Shyam", "Raj", "Prasad"]
output application/json
---
drop(users, 2)