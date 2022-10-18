%dw 2.0
output application/json
---
{
     "a" : [0, 1, 1, 2] -- [1,2] ,
     "b": { "hello" : "world", "name" : "DW" } -- { "hello" : "world"},
     "c": { "yes" : "no", "good" : "bad", "old" : "new" } -- ["yes", "old"],
     "d":{ "hello" : "world", "name" : "DW" } -- ["hello" as Key]
}