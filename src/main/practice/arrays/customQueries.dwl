%dw 2.0
import wrapWith from dw::core::Strings
import * from dw::core::Arrays
output application/java
var x ={
    "tableAlias": "xyz",
    "fieldName": "abc",
    "keys" : ["a0","a1","a2","a3","a4","a5","a6","a7","a8","a9","a10"]    
}
---
(x.keys divideBy  10 map(
   "(" ++ ($ map (wrapWith($,"'")) joinBy  ",") ++ ")"
)) joinBy " or xyz.abc in "