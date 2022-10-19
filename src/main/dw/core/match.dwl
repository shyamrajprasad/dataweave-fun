%dw 2.0
output application/json
var a = '192.88.99.0/24'
var b = '192.168.0.0/16'
var c = '192.175.48.0/24'
---
{
    a:"me@mulesoft.com" match(/([a-z]*)@([a-z]*).com/),
    b: [ a, b, c ] flatMap ( $ match(/.*[$4]/) )
}
