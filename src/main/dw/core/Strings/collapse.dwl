%dw 2.0
import collapse from dw::core::Strings
output application/json
---
collapse("a  b babb a")