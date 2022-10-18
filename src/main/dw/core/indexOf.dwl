%dw 2.0
output application/json
---
{
  present: ["a","b","c","d"] indexOf "c",
  notPresent: ["x","w","x"] indexOf "c",
  presentMoreThanOnce: ["a","b","c","c"] indexOf "c",
  present1: "abcd" indexOf "c",
  notPresent1: "xyz" indexOf "c",
  presentMoreThanOnce1: "abcdc" indexOf "c",
}