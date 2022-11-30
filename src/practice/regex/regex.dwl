%dw 2.0
//https://help.mulesoft.com/s/question/0D52T000068eCT4SAM/replace-string-pattern
output application/json
var x  = "Hello Good Morning (Take Tea) Go to office (Take Breakfast) . Work. (Bye for Now)"
---
x replace  /\(Take.*?\)/ with ""