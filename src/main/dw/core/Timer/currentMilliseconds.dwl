%dw 2.0
import * from dw::util::Timer
output application/json
---
{ "currentMilliseconds" : currentMilliseconds() }