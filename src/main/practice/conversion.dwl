//https://help.mulesoft.com/s/question/0D52T00006NvrEQSAZ/i-want-to-convert-the-json-array-into-required-format-please-help-on-this
%dw 2.0
output application/json
var x = payload groupBy $.SOURCESUPPLYORDERID
---
{
  plantid: "KO",
  salesorderlines: [
    {
      plantid: payload[0].PLANTID,
      customerorder: payload[0].CUSTOMERORDER,
      customerorderlineid: payload[0].CUSTOMERORDERLINEID,
      fulfillment: valuesOf(x) map (
        {
          sourcesupplyorderid: $[0].SOURCESUPPLYORDERID,
          sourcesupplyordertype:$[0].SOURCESUPPLYORDERTYPE,
          targetcustomerordernr: $[0].TARGETCUSTOMERORDERNR,
          targetcustomerorderlinenr: $[0].TARGETCUSTOMERORDERLINENR,
          quantityreserved: $[0].QUANTITYRESERVED,
          plannedWorkorder: {
            plannedworkordernr: $[0].PLANNEDWORKORDERNR,
            isproposal: $[0].ISPROPOSAL,
            routingid: $[0].ROUTINGID,
            operations: $ map (
              {
                plannedworkordernr: $.PLANNEDWORKORDERNR,
                plannedworkorderoperation: $.PLANNEDWORKORDEROPERATION
              }
            )
          }
        })
    }  
  ]
} 