%dw 2.0
import * from dw::util::Timer
output application/json
---
{ "toMilliseconds" : toMilliseconds(|2018-07-23T22:03:04.829Z|) }