%dw 2.0
import countCharactersBy, isNumeric from dw::core::Strings

output application/json
---
"42 = 11 * 2 + 20" countCharactersBy isNumeric($)