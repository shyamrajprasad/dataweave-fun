%dw 2.0
//https://help.mulesoft.com/s/question/0D52T00006YlC8TSAV/dataweave-20-transform-payload
/*
Dataweave 2.0 Transform Payload
I have this payload

 

{ "COV": "EL", "PART_LETTER": "H", "EFFECTIVE_DATE": "29th June", "LOI": "£25", "ENDO_APPLIED": "Y", "ENDO_TITLE": "Some Title", "ENDO": "EELZ0001", "ENDO_NUM": "1", "ENDO": "EELZ0002", "ENDO_NUM": "2", "ENDO_TEST": "TEST" }
 

 

I need to transform it into the following structure -

 

{ "COV": "EL", "PART_LETTER": "H", "EFFECTIVE_DATE": "29th June", "LOI": "£25", "ENDO_APPLIED": "Y", "ENDO_TITLE": "Some Title", "ENDOS": [ { "ENDO": "EELZ0001", "ENDO_NUM": "1" }, { "ENDO": "EELZ0002", "ENDO_NUM": "2", "ENDO_TEST": "TEST" } ]     }
 

 

Basically what is happening is that I need to create an array of ENDOS based on the field "ENDO". Each time we come across the field "ENDO" we need to create a new object that contains the proceeding fields until we hit another "ENDO" field..

 

Any help on this issue would be greatly appreciated.


*/
output application/json
import * from dw::core::Objects
var x = payload takeWhile ((value, key) -> key as String != "ENDO" )
var y = payload -- x
var z = (y mapObject(
  ($$) :$$$
)).*ENDO
---
x ++ ENDOS: z map ((item, index1) -> 
  y filterObject ((value, key, index) -> index>=item and index <= (z[index1+1] default sizeOf(y))-1)
)