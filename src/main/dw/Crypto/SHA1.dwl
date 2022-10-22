%dw 2.0
import dw::Crypto
output application/json
---
{ "sha1" : Crypto::SHA1("dsasd" as Binary) }