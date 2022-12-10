%dw 2.0
import leftJoin from dw::core::Arrays
output application/json
var array1 = [
  {
    "envId": "687897shgjk",
    "status": "REVOKED",
    "contractAPIVersion": "v2",
    "contractAPIName": "ytuiuii"
  },
  {
    "envId": "hiuhoi8098",
    "status": "ACTIVE",
    "contractAPIVersion": "v2",
    "contractAPIName": "ytuiuswdxii"
  }
]
var array2 = [
  {
    "envId": "687897shgjk",
    "envName": "Dev"
  },
  {
    "envId": "hiuhoi8098",
    "envName": "Production"
  },
  {
    "envId": "hi657fd8098",
    "envName": "QA"
  }
]
---
leftJoin(array1, array2 , (a)->a.envId, (b)->b.envId) map (
    $.l ++ envName: $.r.envName
 )