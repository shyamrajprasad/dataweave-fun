%dw 2.0
//https://help.mulesoft.com/s/question/0D52T00006J0CbaSAF/how-to-generate-sequence-number-help-to-solve-dwl-expression-please-help-me
output application/json
import * from dw::core::Strings
var startingNum = substringAfterLast(payload.SysID[0],"-")
---
payload map ((item, index) ->  
    item  update {
            case .SysID ->  substringBeforeLast($,"-") ++ "-" ++ leftPad(startingNum + index ,sizeOf(startingNum),"0")
    }
)