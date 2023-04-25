%dw 2.0
output application/json
---
{ 
  a: min([ 1, 1000 ]), 
  b: min([ 1, 2, 3 ]), 
  c: min([ 1.5, 2.5, 3.5 ]) 
}