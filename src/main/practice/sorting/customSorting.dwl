//https://help.mulesoft.com/s/question/0D52T00006NvP2KSAV/custom-sorting-using-dataweave
%dw 2.0
output application/xml
var x = payload.CUSTOMER.*CUSTOMER_DETAIL groupBy $.ClassificationType
---
{
    APPLICATION: 
        { (x.Primary map ({
                        CUSTOMER @(Age: $.Age, "_Birth": $.Birth, Position: "Customer"): null,
                        CUSTOMER @(Age: x.Secondary[$$].Age, "_Birth": x.Secondary[$$].Birth, Position: "CoCustomer"): null,

                    }))}
    
}


