%dw 2.0
import dw::Crypto
output application/json
---
{ "md5" : Crypto::MD5("asd" as Binary) }