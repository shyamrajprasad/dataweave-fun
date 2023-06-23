%dw 2.0
output application/json
fun factorial(num)= 1 to num reduce $ * $$
---
factorial(5)