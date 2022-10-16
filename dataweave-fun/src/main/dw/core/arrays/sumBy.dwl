%dw 2.0
import * from dw::core::Arrays
output application/json
---
[{ a: 1 }, { a: 2 }, { a: 3 } ] sumBy $.a