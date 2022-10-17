%dw 2.0
import * from dw::core::Binaries
output application/json
---
{ lines: to(1, 10) map "Line $" writeLinesWith  "UTF-8" }