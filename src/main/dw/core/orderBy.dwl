%dw 2.0
output application/json
var myInput = [
    {
        "AccountNumber": "987999321",
        "NameOnAccount": "QA",
        "Type": "AAAA",
        "CDetail": {
            "Status": "Open"
        }
    },
    {
        "AccountNumber": "12399978",
        "NameOnAccount": "QA",
        "Type": "BBBB",
        "CDetail": {}
    },
    {
        "AccountNumber": "32199974",
        "NameOnAccount": "QA",
        "Type": "CCCC",
        "CDetail": {}
    }
]
---
{
    a: [{ letter: "e" }, { letter: "d" }] orderBy($.letter),
    orderDescending: ([3,8,1] orderBy -$),
    number: [3,2,3] orderBy $,
    age:[{name: "Santiago", age: 42},{name: "Leandro", age: 29}, {name: "Mariano", age: 35}] orderBy (person) -> person.age,
    myInput:(myInput orderBy $.Type)[-1 to 0]
}
