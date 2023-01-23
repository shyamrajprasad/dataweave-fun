%dw 2.0
output application/json
---
payload map ((item, index) ->
    {id : item.id} ++
    {(item.fields map (
        ($.name) :  if ($.content is String)  $.content else ($.content.values joinBy ",") 
 ))})  