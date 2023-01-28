# Dataweave Objects Cheatsheet 



<table>
<tr>
<th colspan=3>

__divideBy__

<tr>
<th>
Example
<th>
Output
<th>
Function Definition
<tr>
<td>
  
~~~~
%dw 2.0
import divideBy from dw::core::Objects
output application/json
---
{ "a": 1, "b": true, "a": 2, "b": false, "c": 3 } divideBy 2 
~~~~

<td>
  
~~~~
[
  {
    "a": 1,
    "b": true
  },
  {
    "a": 2,
    "b": false
  },
  {
    "c": 3
  }
]
~~~~
  
<td>
  
  
~~~~
fun divideBy(items: Object, amount: Number): Array<{}> = do {
    fun internalDivideBy<T>(items: Object, amount: Number, carry:{} ): Array<{}> =
        items match {
          case {k:v ~ xs} ->
            if(sizeOf(carry) == amount - 1)
                [carry ++ {(k):v} ~ internalDivideBy(xs, amount, {})]
            else
               internalDivideBy(xs, amount, carry ++ {(k):v} )
          else ->
            if(isEmpty(carry))
             []
            else
             [carry]
        }
    ---
    internalDivideBy(items, amount, {})
}
~~~~
  

<tr>
<th colspan=3>

__everyEntry__

<tr>
<th>
Example
<th>
Output
<th>
Function Definition
<tr>
<td>
  
~~~~
%dw 2.0
import everyEntry from dw::core::Objects
output application/json
---
{
    a: {} everyEntry (value, key) -> value is String,
    b: {a: "", b: "123"} everyEntry (value, key) -> value is String,
    c: {a: "", b: 123} everyEntry (value, key) -> value is String,
    d: {a: "", b: 123} everyEntry (value, key) -> key as String == "a",
    e: {a: ""} everyEntry (value, key) -> key as String == "a",
    f: null everyEntry ((value, key) -> key as String == "a")
}
~~~~

<td>
  
~~~~
{
  "a": true,
  "b": true,
  "c": false,
  "d": false,
  "e": true,
  "f": true
}
~~~~
  
<td>
  
  
~~~~
fun everyEntry(object: Object, condition: (value: Any, key: Key) -> Boolean): Boolean = do {
  object match {
    case {} -> true
      case {k:v ~ tail} ->
        if (condition(v,k))
          everyEntry(tail, condition)
        else
           false
  }
}
~~~~
  
</table>
