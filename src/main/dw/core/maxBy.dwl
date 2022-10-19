%dw 2.0
output  application/json
var myDateTime1 = "2017-10-01T22:57:59-03:00"
var myDateTime2 = "2018-10-01T23:57:59-03:00"
---
{
    a:[ { "a" : 1 }, { "a" : 3 }, { "a" : 2 } ] maxBy ((item) -> item.a),
    b:{
  myMaxBy: {
    byDateTime: [ myDateTime1, myDateTime2 ] maxBy ((item) -> item),
    byDate: [ myDateTime1 as Date, myDateTime2 as Date ] maxBy ((item) -> item),
    byTime: [ myDateTime1 as Time, myDateTime2 as Time ] maxBy ((item) -> item),
    emptyArray: [] maxBy ((item) -> item)
  }
}
}