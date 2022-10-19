%dw 2.0
output application/json
var myvar = {
   "list1": ["a", "b"],
   "list2": [1, 2, 3],
   "list3": ["aa", "bb"],
   "list4": [["A", "B", "C"], [11, 12], ["aA", "bB"]]
}
---
{
  "a" : [0, 1, 2, 3] zip ["a", "b", "c", "d"],
  "b" : [0, 1, 2, 3] zip ["a"],
  "c" : [0, 1, 2, 3] zip ["a", "b"],
  "d" : [0, 1, 2] zip ["a", "b", "c", "d"],
  "e" : ((myvar.list1 zip myvar.list2) zip myvar.list3) zip myvar.list4
}