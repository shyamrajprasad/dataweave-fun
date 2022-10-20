import * from dw::core::Strings
output application/json
---
{
    a: replaceAll("Mariano", "a" , "A"),
    b: replaceAll("AAAA", "AAA" , "B"),
    c: replaceAll(null, "aria" , "A"),
    d: replaceAll("Mariano", "j" , "Test"),
}