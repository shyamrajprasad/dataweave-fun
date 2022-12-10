%dw 2.0
import levenshteinDistance from dw::core::Strings
output application/json
---
{
a: "kitten" levenshteinDistance "sitting",
b: "kitten" levenshteinDistance "sitten",
c: "sitten" levenshteinDistance  "sittin",
d: "kitten" levenshteinDistance "kitten",
e: "sittin" levenshteinDistance  "sitting"
}