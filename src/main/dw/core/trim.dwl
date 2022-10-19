%dw 2.0
output application/json
---
{ "trim": trim("   my really long  text     "),
    "null": trim(null),
    "empty": trim(""),
    "blank": trim("     "),
    "noBlankSpaces": trim("abc"),
    "withSpaces": trim("    abc    ")
}