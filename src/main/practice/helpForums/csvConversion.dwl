//https://help.mulesoft.com/s/question/0D52T00006PNNtYSAX/need-help-to-write-a-excel-file-with-custom-format
%dw 2.0
output application/json
var x = payload.Company.."Company Name" distinctBy $
var cost = namesOf(payload.Company[0][0] -"Company Name")
---
payload map (
   do {
	var companyGroup = $.Company groupBy $."Company Name"

	---
   $ - "Company" ++ {(x flatMap ((company, index) -> 
        cost map ((cost, index) -> 
            (company ++ "-" ++ cost) : companyGroup[company][0][cost] default ""
         )
   ))}
}
)