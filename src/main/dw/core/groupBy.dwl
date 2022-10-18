%dw 2.0
output application/json
var myArray = [
   { "name": "Foo", "language": "Java" },
   { "name": "Bar", "language": "Scala" },
   { "name": "FooBar", "language": "Java" }
]
var myVar = { menu: {
    header: "Move Items",
    items: [
        {"id": "internal"},
        {"id": "left", "label": "Move Left"},
        {"id": "right", "label": "Move Right"},
        {"id": "up", "label": "Move Up"},
        {"id": "down", "label": "Move Down"}
    ]
}}
var myRead =
read("<prices><price>9.99</price><price>10.99</price></prices>","application/xml")
---
{
    a: ["a","b","c"] groupBy (item, index) -> index,
    b: myArray groupBy (item) -> item.language,
    c: (myVar.menu.items.*label groupBy "myLabels"),
    d: "hello world!" groupBy (not isEmpty($ find /[aeiou]/)),
    e: { "a" : "b", "c" : "d"} groupBy upper($),
    f: myRead.prices groupBy "costs"
}    