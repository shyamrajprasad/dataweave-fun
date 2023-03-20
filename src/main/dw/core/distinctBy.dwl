%dw 2.0
output application/json
var record =  {
  "title": "DataWeave Fun",
  "author": [
    "James McGovern",
    "Per Bothner",
    "Kurt Cagle",
    "Shyam Raj Prasad",
    "Shyam Raj Prasad",
    "Shyam Raj Prasad",
    "Shyam Raj Prasad",
    "Vaidyanathan Nagarajan"
  ],
  "year":"2000"
}
---
{
    a: [0, 1, 2, 3, 3, 2, 1, 4] distinctBy (value) -> { "unique" : value },
    b: {a : "b", a : "b", A : "b", a : "B"} distinctBy (value) -> { "unique" : value },
    "authors" : record.author distinctBy $,
    authorsFromXml: payload.book.&author distinctBy $
}