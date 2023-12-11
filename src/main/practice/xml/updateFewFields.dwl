%dw 2.0
var x = [
  {
    "code": "HIGH",
    "key": "325",
    "status": "hold",
    "nameValue": {
      "name": "CreateDate",
      "value": "2023-11-06T13:04:34Z"
    }
  },
  {
    "code": "LOW",
    "key": "336",
    "status": "Correct",
    "nameValue": {
      "name": "CreateDate",
      "value": "2023-11-06T13:04:34Z"
    }
  },
  {
    "code": "MEDIUM",
    "key": "368",
    "status": "drop",
    "nameValue": {
      "name": "CreateDate",
      "value": "2023-11-06T13:04:34Z"
    }
  }
]
var y = x groupBy $.key mapObject (
    ($$) : {($)} 
)
import * from dw::util::Values

output application/json writeAttributes=true
ns ns0 https://abc.com

---
{
    ns0#data @(Version: "1.0.00"): {
      request: {
        body: {
          ns0#label @(id: "label_3258604"): {
            ns0#number: {
              info @(id: "2432", PID: "345345"): {
                code @(tc: "12345"): "DHI",
                key @(code: "db", vCode: "012"): "325",
                status @(tc: "5"): "Satisfied",
                nameValue: {
                  name: "CreateDate",
                  value: "2023-11-06T13:02:47Z"
                }
              },
              info @(id: "23424", PID: "345345"): {
                code @(tc: "12345"): "ABC",
                key @(code: "db", vCode: "012"): "336",
                status @(tc: "5"): "wrong",
                nameValue: {
                  name: "CreateDate",
                  value: "2023-11-06T13:02:47Z"
                }
              },
              info @(id: "23423", PID: "345345"): {
                code @(tc: "12345"): "HGD",
                key @(code: "db", vCode: "012"): "368",
                status @(tc: "5"): "stop",
                nameValue: {
                  name: "CreateDate",
                  value: "2023-11-06T13:02:47Z"
                }
              }
            }
          }
        }
      }
    }
  }
