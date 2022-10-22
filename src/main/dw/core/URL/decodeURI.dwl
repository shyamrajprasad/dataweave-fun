%dw 2.0
import * from dw::core::URL
output application/json
---
{
  "decodeURI" : decodeURI('http://asd/%20text%20to%20decode%20/text')
}