%dw 2.0
import lines, isAlphanumeric, reverse from dw::core::Strings
output application/json
---
lines(payload) reduce ((item, accumulator = 0) -> 
            do {
               	var text = lower(item filter (isAlphanumeric($)))
               	---
                if(text == reverse(text)) sizeOf(item) + accumulator else accumulator + 0
            }
        )