%dw 2.0
output application/json
var users = [
   {
      "user": {
         "name": "123",
         "lastName": "Smith"
      },
      "error": "That name doesn't exists"
   },
   {
      "user": {
         "name": "John",
         "lastName": "Johnson"
      },
      "error": null
   }
]
---
{
    a: [9,2,3,4,5] filter (value, index) -> (value > 2),
    b: [{name: "Mariano", age: 37}, {name: "Shoki", age: 30}, {name: "Tomo", age: 25}, {name: "Ana", age: 29}]
          filter ((value, index) -> value.age >= 30),
    c: [9, 2, 3, 4, 5] filter (($$ > 1) and ($ < 5)),
    d: users filter ((item, index) -> item.error == null),
    e: "hello world" filter ($$ mod 2) == 0,
    activePhoneNumbers: (payload.profile.base.phone filter ($.activeInd == "Y" and $.primaryInd== "Y")).number default []
}


