%dw 2.0
import * from dw::core::Binaries
output application/json
var myBinary = "Mule" as Binary
var testType = typeOf(myBinary)
---
{
   "binaryToHex" : toHex(myBinary)
}