%dw 2.0
import hammingDistance from dw::core::Strings
output application/json
---
"holu" hammingDistance "chau"