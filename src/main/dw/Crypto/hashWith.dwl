%dw 2.0
import dw::Crypto
output application/json
---
{ "md2" : Crypto::hashWith("hello" as Binary, "MD2") }