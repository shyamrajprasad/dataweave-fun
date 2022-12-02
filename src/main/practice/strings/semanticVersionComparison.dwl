%dw 2.0
output application/json
import * from dw::core::Strings
fun compareVersions(var1, var2) = (var1 splitBy  "." map (leftPad($, 10,0)) joinBy ".") <= (var2 splitBy  "." map (leftPad($, 10,0)) joinBy "." )
---
{
    a:compareVersions("1.2.3","1.2.4"),
    b:compareVersions("1.2.3","1.2.2")
}