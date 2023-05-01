%dw 2.0
output application/json
import * from dw::core::Dates
var startDate = payload.startDate as Date {format : "dd MMM yyyy"} as Date
var endDate = payload.endDate as Date {format : "dd MMM yyyy"} as Date
var noOfMonths = 0 to (((endDate.year - startDate.year) * 12 + (endDate.month - startDate.month)))

---
 noOfMonths map ((item, index) -> 
{
              
      monthlyStartDate: if(index==0) startDate else date ({year: startDate.year, month: startDate.month, day: 1}) + ("P$(index)M" as Period),
      monthlyEndDate: if(index==sizeOf(noOfMonths)-1) endDate else date ({year: startDate.year, month: startDate.month, day: 1}) + ("P$(index+1)M" as Period) - |P1D|
  }

 ) 
