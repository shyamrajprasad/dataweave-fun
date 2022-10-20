%dw 2.0
import lines from dw::core::Strings
output application/json
---
lines("hello world\n\nhere   data-weave")