%dw 2.0
import someCharacter, isUpperCase from dw::core::Strings

output application/json
---
"someCharacter" someCharacter isUpperCase($)