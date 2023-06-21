%dw 2.0
output application/json
var orderedLookupObject=payload.lookUpObject orderBy $.date as Date {format : "MM/dd/yyyy"} as Date 
var lookupObject = orderedLookupObject + {date: (orderedLookupObject[0].date as Date {format : "MM/dd/yyyy"} as Date + |P20D| ) as Date {format : "MM/dd/yyyy"},
exchangeRate: orderedLookupObject[-1].exchangeRate}
---
//0 to (orderedLookupObject.date[-1] as Date {format : "MM/dd/yyyy"} as Date - orderedLookupObject.date[0] as Date {format : "MM/dd/yyyy"} as Date) as Period / (24 * 60 * 60) map ( orderedLookupObject.date[0] as Date {format : "MM/dd/yyyy"} + ("P"++$++"D") as Period)

lookupObject  flatMap ((item, index) -> 
            if(sizeOf(lookupObject) == index + 1) 
                item  
            else 
               0 to ( (lookupObject[index + 1].date  as Date {format : "MM/dd/yyyy"} as Date)  -  (item.date  as Date {format : "MM/dd/yyyy"} as Date))/(24*60*60) -1
                    map ((item1, index1) -> 
                            item  update {
                                case .date -> (item.date as Date {format : "MM/dd/yyyy"} + "P$(index1)D" as Period) as Date {format : "MM/dd/yyyy"}
                            }
                        )
        )