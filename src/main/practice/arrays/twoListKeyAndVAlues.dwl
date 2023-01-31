%dw 2.0
//https://help.mulesoft.com/s/question/0D52T00006J0XitSAF/how-to-map-two-lists-of-item-in-a-way-that-the-new-list-will-have-items-of-1st-list-as-key-and-2nd-list-as-values
var list1 = ["default", "xyz", "wxyz"]
var list2 = ["000", "001", "002"]
output application/json  
---
[
  {
    (list1 map ((item, index) -> 
      (item): list2[index]
    ))
  }
]