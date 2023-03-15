%dw 2.0
output application/json
---
{
     //removes specified items from an array.
     "a" : [0, 1, 1, 2] -- [1,2] ,
     //removes a key-value pair from the source object.
     "b": { "hello" : "world", "name" : "DW" } -- { "hello" : "world"},
     //removes two key-value pairs from the source object.
     "c": { "yes" : "no", "good" : "bad", "old" : "new" } -- ["yes", "old"],
     //Removes specified key-value pairs from an object.
     "d":{ "hello" : "world", "name" : "DW" } -- ["hello" as Key]
}