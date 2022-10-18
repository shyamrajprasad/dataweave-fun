%dw 2.0
output application/json
var array1 = [1,2,3]
var array2 = [4,5,6]
var array3 = [7,8,9]
var arrayOfArrays = [array1, array2, array3]
var myData =
{ user : [
   {
     group : "dev",
     myarray : [
       { name : "Shoki", id : 5678 },
       { name : "Mariano", id : 9123 }
     ]
   },
   {
     group : "test",
     myarray : [
       { name : "Sai", id : 2001 },
       { name : "Peter", id : 2002 }
     ]
   }
 ]
}
---
{
    a: flatten(arrayOfArrays),
    b: flatten(myData.user.myarray)
}
