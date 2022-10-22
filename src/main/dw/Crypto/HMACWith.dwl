%dw 2.0
import dw::Crypto
output application/json
---
{ "HMACWith" : Crypto::HMACWith("secret_key" as Binary, "Some value to hash" as Binary, "HmacSHA256") }