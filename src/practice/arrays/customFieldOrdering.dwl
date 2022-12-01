//https://help.mulesoft.com/s/question/0D52T000068fh4QSAQ/how-to-write-a-dataweave-script-to-reorder-each-json-object-in-the-data-array-according-to-the-sequence-of-fields-in-fields-array
%dw 2.0
output application/json
var fields = ['Firstname', 'Lastname', 'Address', 'Phone', 'EmployeeId', 'Location', 'Email', 'Contact_Preference']

var data = [
  {
    "EmployeeID": "RT456",
    "Address": "123 Main St, Boston, MA",
    "Phone": "1234567890",
    "Location": "MA",
    "Firstname": "John",
    "Contact_Preference": "Phone",
    "Email": "jcooper@example.com",
    "Lastname": "Cooper"
  },
  {
    "EmployeeID": "RT765",
    "Address": "345 Sycamore St, Boston, MA",
    "Phone": "8763451232",
    "Location": "MA",
    "Firstname": "Xavier",
    "Contact_Preference": "Email",
    "Email": "xfar@example.com",
    "Lastname": "Fernandes"
  },
  {
    "EmployeeID": "RT098",
    "Address": "1 Trepelo Dr, Boston, MA",
    "Phone": "8712309873",
    "Location": "MA",
    "Firstname": "Dingle",
    "Contact_Preference": "Phone",
    "Email": "dmac@example.com",
    "Lastname": "McCringleberry"
  },
  {
    "EmployeeID": "RT231",
    "Address": "453 Broadway, Boston, MA",
    "Phone": "7812315409",
    "Location": "MA",
    "Firstname": "Aaron",
    "Contact_Preference": "Email",
    "Email": "agarby@example.com",
    "Lastname": "Garby"
  }
]
---
data map ((item, index) ->
    {(fields map (
        ($) : item[$]
    ))}
 )