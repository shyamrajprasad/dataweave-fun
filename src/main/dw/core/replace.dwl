%dw 2.0
output application/json
---
{
    a:["123-456-7890" replace /.*-/ with(""), "abc123def" replace /[b13e]/ with("-")],
    b:[ "my123" replace /(\d+)/ with("ID"), replace("myOther123", /(\d+)/) with("ID") ],
    c: "admin123" replace "123" with("ID")
}    

