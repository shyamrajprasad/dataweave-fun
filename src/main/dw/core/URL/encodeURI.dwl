%dw 2.0
import * from dw::core::URL
output application/json
---
{
    "encodeURI" : encodeURI("http://asd/ text to decode /text"),
    "not_encoded": encodeURI("http://:;,/?:@&=\$_-_.!~*'()")
}