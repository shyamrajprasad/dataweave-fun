%dw 2.0
output application/json
var x  = "Hello Good Morning (Take Tea) Go to office (Take Breakfast) . Work. (Bye for Now)"
---
x replace  /\(Take.*?\)/ with ""