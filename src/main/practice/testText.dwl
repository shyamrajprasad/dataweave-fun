%dw 2.0
import lines from dw::core::Strings
output application/json
fun factorial(x) = 1 to x reduce ((item, accumulator) -> 
    accumulator * item
)

---
((lines(payload) filter ($>0) reduce ((item, accumulator) ->
    factorial(item) + accumulator
 )) as String)[20 to 25] as Number