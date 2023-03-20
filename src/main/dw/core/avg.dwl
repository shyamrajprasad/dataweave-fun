%dw 2.0
output application/json
fun avg(values: Array<Number>): Number = 
        sum(values) / sizeOf(values)

---
{ 
    a: avg([ 1, 1000 ]), 
    b: avg([ 1, 2, 3 ]) 
}

