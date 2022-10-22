%dw 2.0
import * from dw::core::URL
output application/json
---
{
  'composition': parseURI('https://en.wikipedia.org/wiki/Uniform_Resource_Identifier#footer')
}