%dw 2.0
output application/json
var myObject = {
    str1 : "String 1",
    str2 : "String 2",
    str3 : null,
    str4 : "String 4",
}
---
{
    a: {"a" : "apple", "b" : "banana"} filterObject ((value) -> value == "apple"),
    b: {"letter1": "a", "letter2": "b", "id": 1} filterObject ((value, key) -> key startsWith "letter"),
    c: { "1": "a", "2": "b", "3": "c"} filterObject ((value, key, index) -> index < 1),
    d: myObject filterObject $ != null
}    
