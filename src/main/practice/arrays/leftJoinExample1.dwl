//https://help.mulesoft.com/s/question/0D52T00006BapNpSAJ/transforming-the-data
%dw 2.0
output application/json
import * from dw::core::Arrays
import * from dw::core::Objects
var invoice = [
  {
    "transaction_id": "16690258549305291",
    "INVOICE_NUM": "65432121"
  },
  {
    "transaction_id": "1669025854",
    "INVOICE_NUM": "98765"
  }
]
---
leftJoin(invoice, payload, (i)->i.INVOICE_NUM, (p)-> p.INVOICE_NUM) map (
    $.l mergeWith $.r
)