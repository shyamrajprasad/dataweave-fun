%dw 2.0
import words from dw::core::Strings
output application/json
---
words("hello world\nhere\t\t\tdata-weave")