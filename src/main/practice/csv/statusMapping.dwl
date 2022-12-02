//https://help.mulesoft.com/s/question/0D52T000069xn68SAA/how-to-validate-combined-strings-with-array
%dw 2.0
output application/json
var status = [ "Active", "On Hold", "Completed" ]
---
payload map ((item, index) -> 
        item update {
           case .Status ->  do {
               	var myVar = status filter ((item1, index) -> $ contains item1)
               	---
                if(sizeOf(myVar) == 1) myVar[0] else "Invalid"
            }
        }
)
