//https://help.mulesoft.com/s/question/0D52T00006PNgVJSA1/join-with-2-keys

%dw 2.0
import * from dw::core::Arrays
var users = [ 
        { id: "1", c: "HSY", name: "Shyam" }, 
        { id: "2", c: "HSY", name: "Raj" }, 
        { id: "3", c: "PSV", name: "Prasad" }, 
        { id: "5", c: "HSY", name: "Prasad" } 
    ]
var products = [ 
        { ownerId: "1", c: "HSY", name: "DataWeave" }, 
        { ownerId: "1", c: "HSY", name: "BAT" }, 
        { ownerId: "3", c: "HSY", name: "DataSense" }, 
        { ownerId: "4", c: "HSY", name: "SmartConnectors" } 
    ]
output application/json
---
join(users, products, (user) -> user.id ++ user.c, 
                      (product) -> product.ownerId ++ product.c)