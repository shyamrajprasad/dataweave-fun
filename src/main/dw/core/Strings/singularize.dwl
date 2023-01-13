%dw 2.0
import * from dw::core::Strings
output application/json
---
{ 
    "a" : singularize("boxes"),
    "b" : singularize("feet"),
    "c" : singularize("children"),
    "d" : singularize("muleys"),
    "e" : singularize("cities")
}