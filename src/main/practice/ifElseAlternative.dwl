%dw 2.0
//https://help.mulesoft.com/s/question/0D52T00006Iyl0BSAR/alternative-to-if-else-condition
var mapping = {
  "PRA": {
    "ACT": "ActiveA1",
    "inactive": "InactiveA1"
  },
  "APL": {
    "ACT": "ActiveB1",
    "inactive": "InactiveB1"
  },
  "COM": {
    "ACT": "ActiveC1",
    "inactive": "InactiveC1"
  },
  "CER": {
    "IPO": "ActiveD1",
    "inactive": "InactiveD1"
  }
}
output application/json  
---
mapping[payload.state][payload.status] default mapping[payload.state].inactive