%dw 2.0
output application/json
var count = 2100
var limit = 200
---
0 to ceil(count / limit) map ({
    limit: limit,
    offset: $ * limit
})
 