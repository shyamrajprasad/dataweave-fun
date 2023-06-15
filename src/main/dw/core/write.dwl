%dw 2.0
output application/xml
var employees =[
  {
    "Name": "Mr White",
    "Email": "white@mulesoft.com",
    "Id": "1234",
    "Title": "Chief Java Prophet"
  },
  {
    "Name": "Mr Orange",
    "Email": "orange@mulesoft.com",
    "Id": "4567",
    "Title": "Integration Ninja"
  }
]
---
{ "output" : write(employees, "application/csv", {"header":true, "separator" : "|"}) }