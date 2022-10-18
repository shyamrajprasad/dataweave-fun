%dw 2.0
output  application/json
var someString = "something"
var nullString = null
---
{
  // checking if the string is blank
  "emptyString" : isBlank(""),
  "stringWithSpaces" : isBlank("      "),
  "textString" : isBlank(someString),
  "somePayloadValue" : isBlank(payload.nonExistingValue),
  "nullString" : isBlank(nullString),

  // checking if the string is not blank
  "notEmptyTextString" : not isBlank(" 1234"),
  "notEmptyTextStringTwo" : ! isBlank("")
}