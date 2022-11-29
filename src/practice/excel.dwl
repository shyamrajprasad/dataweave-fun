%dw 2.0
output application/json
var headingRow = payload.result.Report.Metadata.HeadingRow
var x =valuesOf(payload.result.Report.Values groupBy $$[0] mapObject (
    ($$) : $ filterObject (($$[1 to -1] >= headingRow))
)) map (valuesOf($))
---
{(1 to sizeOf(x[0])-1 map ((item, index) ->
    Record: {( 0 to sizeOf(x)-1 map ((item1, index1) ->
        ((x[item1])[0]) : x[item1][item]
    ))}
))}