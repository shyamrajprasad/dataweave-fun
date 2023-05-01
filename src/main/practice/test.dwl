%dw 2.0
output application/json
import * from dw::core::Dates
var startDate = "2022-01-15" as Date
var endDate = "2023-04-11" as Date
var noOfMonths = 0 to (((endDate.year - startDate.year) * 12 + (endDate.month - startDate.month)))

---
 noOfMonths map ((item, index) -> 
{
              
      startDate: if(index==0) startDate else date ({year: startDate.year, month: startDate.month, day: 1}) + ("P$(index)M" as Period),
      endDate: if(index==sizeOf(noOfMonths)-1) endDate else date ({year: startDate.year, month: startDate.month, day: 1}) + ("P$(index+1)M" as Period) - |P1D|
  }

 ) 
