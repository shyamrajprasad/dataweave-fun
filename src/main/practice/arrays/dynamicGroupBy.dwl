%dw 2.0
output application/json
var x = [ {
			"person": {
					"name": "Shyam",
					"address": "Gaya"
				}
		}, {
			"person": {
					"name": "Raj",
					"address": "Bangalore"
				}
		}, {
			"person": {
					"name": "Raj",
					"address": "Indore"
				}
		}]
var y = "person.name"
---
x groupBy ((item, index) -> 
			(y splitBy "." reduce ((item1, accumulator = x[index]) -> 
							accumulator[item1])))