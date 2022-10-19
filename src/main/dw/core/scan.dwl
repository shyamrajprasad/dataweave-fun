%dw 2.0
output application/json
---
{
    a:flatten("www.mulesoft.com" scan(/([w]*).([a-z]*).([a-z]*)/)),
    b:"anypt@mulesoft.com,max@mulesoft.com" scan(/([a-z]*)@([a-z]*).com/)
}