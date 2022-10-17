%dw 2.0
import * from dw::core::Binaries
var content = read("Line 1\nLine 2\nLine 3\nLine 4\nLine 5\n", "application/octet-stream")
output application/json
---
{
   lines : (content readLinesWith "UTF-8"),
   showType: typeOf(content)
}