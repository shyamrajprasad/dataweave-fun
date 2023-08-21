%dw 2.0
output application/json
import * from dw::core::Arrays
var x =join(orgData,brandData,(o)->o.name ++ o.companyNumber, (b)->b.name ++ (b.account__c default "")) map (
    {
        brandId:$.r.unique_application_session_id__c,
        boothNumber: $.l.boothNumber
    }
 ) filter ($.boothNumber !=null)
var orgLastSyncDate = "sx"
---
orgData filter ($.modified? )