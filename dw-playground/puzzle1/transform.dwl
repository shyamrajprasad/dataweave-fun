%dw 2.0
output application/json
var regions = {
    "DE": "EMEA",
    "ML": "APAC",
    "CA": "LATAM",
    "CA": "EMEA",
    "XY": "APAC"
}
/* Expected output
{
  "LATAM": [
    {
      "country": "CA"
    }
  ],
  "EMEA": [
    {
      "country": "CA"
    },
    {
      "country": "DE"
    }
  ],
  "APAC": [
    {
      "country": "ML"
    },
    {
      "country": "XY"
    }
  ]
}
*/
---
payload