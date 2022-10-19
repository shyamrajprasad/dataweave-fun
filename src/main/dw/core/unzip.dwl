%dw 2.0
output application/json
---
{
    a:unzip([ [0,"a"], [1,"b"], [2,"c"],[ 3,"d"] ]),
    b:unzip([ [0,"a"], [1,"a","foo"], [2], [3,"a"] ])
}
