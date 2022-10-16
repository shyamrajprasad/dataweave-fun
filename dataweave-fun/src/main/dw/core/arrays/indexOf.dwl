%dw 2.0
import * from dw::core::Arrays
output application/json
var users = ["Shyam", "Raj", "Prasad"]
---
indexOf(users, "Raj")