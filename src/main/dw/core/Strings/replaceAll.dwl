%dw 2.0
import * from dw::core::Strings
output application/json
---
{
    a: replaceAll("Shyam Raj", "a" , "A"),
    b: replaceAll("AAAAAA", "AAA" , "B"),
    c: replaceAll(null, "Raj" , "A"),
    d: replaceAll("Shyam", "j" , "Test"),
}