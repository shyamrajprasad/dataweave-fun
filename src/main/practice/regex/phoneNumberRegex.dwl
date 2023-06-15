%dw 2.0
output application/json
var x ="(970) 321-5229"
---
x matches /^(\()?\d{3}(\))?(-|\s)?\d{3}(-|\s)\d{4}$/