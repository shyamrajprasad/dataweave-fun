%dw 2.0
output application/json
---
{
    a: "123-456-7890" replace /.*-/ with(""), 
    b: "abc123def" replace /[b13e]/ with("-"),
    c: "my123" replace /(\d+)/ with("ID"), 
    d: replace("myOther123", /(\d+)/) with("ID"),
    e: "admin123" replace "123" with("ID")
}    

