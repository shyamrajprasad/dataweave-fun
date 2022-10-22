%dw 2.0
import dw::Crypto
output application/json
---
{
  "HMACBinary" : Crypto::HMACBinary("confidential" as Binary, "xxxxx" as Binary, "HmacSHA512")
}