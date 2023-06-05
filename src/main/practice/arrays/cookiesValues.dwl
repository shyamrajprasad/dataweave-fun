%dw 2.0
var cookiesObject = {
  (payload.cookie splitBy ";" map (do {
	var c = $ splitBy "="
	---
{
    ((c)[0]): ((c)[1])
  }
}))
}
output application/json  
---
{
  "id": cookiesObject.id
}