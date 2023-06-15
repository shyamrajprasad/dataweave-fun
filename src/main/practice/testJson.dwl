
%dw 2.0
output application/json
---
payload.applicant map   (
   do {
	var phoneNumbers = {($.phone map (
    ($."type") : $.number
   ))}
	---
    { firstName: $.firstName ,
    ( "phone": phoneNumbers."work") if (phoneNumbers."work"?) ,
    ("telephone": phoneNumbers."home") if (phoneNumbers."home"?) ,
    ("cell": phoneNumbers."mobile") if (phoneNumbers."mobile"?)
   }
}
 )