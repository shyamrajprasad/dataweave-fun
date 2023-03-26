%dw 2.0
output application/json
---
{ (payload map 
            { ($.Student) : namesOf($ filterObject ($ == "pass" )) joinBy ","
            })}



