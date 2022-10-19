%dw 2.0
output application/json
---
{
   a: ["jose", "pedro", "mateo"] map (value, index) -> { (index) : value},
   b: ['a', 'b', 'c'] map ((value, index) -> (index + 1) ++ '_' ++ value),
   c: ['joe', 'pete', 'matt'] map ( "$$" : $)
}