%dw 2.0
output application/json
import * from dw::util::Values
var users = [ 
    { name: "Peter Parker", password: "spiderman" }, 
    { name: "Bruce Wayne", password: "batman" } 
    ]
---
{
    users: users mask  "password" with "*****" ,
    indexMasking: [[123, true], [456, true]] mask 1 with false
}