%dw 2.0
import * from dw::core::URL
output application/json
---
{
  "comparing_encode_functions_output" : {
  	"encodeURIComponent" : encodeURI(" PATH/ TO /ENCODE "),
  	"encodeURI" : encodeURI(" PATH/ TO /ENCODE "),
  	"encodeURIComponent_to_hex" : encodeURIComponent(";,/?:@&="),
  	"encodeURI_not_to_hex" : encodeURI(";,/?:@&="),
  	"encodeURIComponent_not_encoded" : encodeURIComponent("-_.!~*'()"),
  	"encodeURI_not_encoded" : encodeURI("-_.!~*'()")
  }
}