%dw 2.0
//https://help.mulesoft.com/s/question/0D52T00006PNgVJSA1/join-with-2-keys
import * from dw::core::Arrays
var users = [{id: "1", c:"HSY", name:"Mariano"},{id: "2", c:"HSY", name:"Leandro"},{id: "3", c:"PSV", name:"Julian"},{id: "5", c:"HSY", name:"Julian"}]
var products = [{ownerId: "1", c:"HSY", name:"DataWeave"},{ownerId: "1", c:"HSY", name:"BAT"}, {ownerId: "3", c:"HSY", name:"DataSense"}, {ownerId: "4", c:"HSY", name:"SmartConnectors"}]
output application/json
---
join(users, products, (user) ->  user.id ++ user.c, (product) -> product.ownerId++ product.c)