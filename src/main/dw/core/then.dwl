%dw 2.0
output application/json
---
{
    "chainResult": ["Shyam", "Raj"]
            reduce ((item, accumulator) -> item ++ accumulator)
            then ((result) -> sizeOf(result)),
    "referenceResult" : ["Shyam", "Raj"]
                         map ((item, index) -> upper(item))
                         then {
                            name: $[0],
                            lastName: $[1],
                            length: sizeOf($)
                        },
    "onNullReturnNull": []
                reduce ((item, accumulator) -> item ++ accumulator)
                then ((result) -> sizeOf(result))
}