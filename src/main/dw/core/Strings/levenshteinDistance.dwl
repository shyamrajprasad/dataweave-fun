%dw 2.0
import levenshteinDistance from dw::core::Strings
output application/json
---
"kitten" levenshteinDistance "sitting"