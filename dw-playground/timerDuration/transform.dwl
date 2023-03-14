%dw 2.0
output application/json
import * from dw::util::Timer
---
duration(() -> sum(1 to 10000))