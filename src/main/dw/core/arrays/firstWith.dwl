%dw 2.0
output application/json
import firstWith from dw::core::Arrays
var users = [ 
                { name: "raj", lastName: "Prasad" }, 
                { name: "Shyam", lastName: "Prasad" }, 
                { name: "Shyam", lastName: "Raj" } 
            ]
---
users firstWith ($.name == "Shyam")