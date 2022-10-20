%dw 2.0
import * from dw::core::Objects
var myVar = read('<users xmlns="http://test.com">
                     <user name="Mariano" lastName="Achaval"/>
                     <user name="Stacey" lastName="Duke"/>
                  </users>', 'application/xml')
output application/json
---
{ keySetExample: flatten([keySet(myVar.users) map $.#,
                          keySet(myVar.users) map $.@])
}
++
{ nameSet: flatten([nameSet(myVar.users) map $.#,
                    nameSet(myVar.users) map $.@])
}