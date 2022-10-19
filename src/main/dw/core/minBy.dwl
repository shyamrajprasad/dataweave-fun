%dw 2.0
output  application/json
var myDateTime1 = "2017-10-01T22:57:59-03:00"
var myDateTime2 = "2018-10-01T23:57:59-03:00"
---
{
    a:[ { "a" : 1 }, { "a" : 2 }, { "a" : 3 } ] minBy (item) -> item.a,
    b: {
  myMinBy: {
    byDateTime: [ myDateTime1, myDateTime2 ] minBy ((item) -> item),
    byDate: [ myDateTime1 as Date, myDateTime2 as Date ] minBy ((item) -> item),
    byTime: [ myDateTime1 as Time, myDateTime2 as Time ] minBy ((item) -> item),
    aBoolean: [ true, false, (0 > 1), (1 > 0) ] minBy $,
    emptyArray: [] minBy ((item) -> item)
  }
}
}