%dw 2.0
output application/xml
ns acme http://acme.com
---
  {
      user @((xsiType("user", acme))): {
          name: "Peter",
          lastName: "Parker"
      }
  }