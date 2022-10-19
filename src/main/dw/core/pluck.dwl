%dw 2.0
output application/json
var readXml = read("<prices>
    <basic>9.99</basic>
    <premium>53.00</premium>
    <vip>398.99</vip>
    </prices>", "application/xml")
---
{
    a:{"a":"b","c":"d"} pluck (value,key,index) -> { (index) : { (value):key} },
    "result" : {
  "keys" : readXml.prices pluck($$),
  "values" : readXml.prices pluck($) as Number,
  "indices" : readXml.prices pluck($$$)
}
}    