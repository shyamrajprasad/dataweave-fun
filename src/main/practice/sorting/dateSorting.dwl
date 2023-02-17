//https://stackoverflow.com/questions/75479293/dataweave-filtering-nested-arrays-and-displaying-in-descending-order
%dw 2.0
output application/json
import * from dw::util::Values
---
 payload update ["offers","customers"] with (
    (($ map (
        $  update {
                case .tickets ->  ($ orderBy $.timestamp  as LocalDateTime {format : "yyyy-MM-dd HH:mm:ss.SSSSSS"}) [-1 to 0]
        }
    )) orderBy $.tickets[0].timestamp as LocalDateTime {format : "yyyy-MM-dd HH:mm:ss.SSSSSS"}) [-1 to 0]
 )
