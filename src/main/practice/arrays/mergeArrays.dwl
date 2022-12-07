%dw 2.0
import outerJoin from dw::core::Arrays
output application/json

var array1 = [
    {
        "isSuccess": "true",
        "errorMessage": "",
        "recordId": "record1",
        "record": [
            {
                "testData1": "test",
                "testData1":"test",
                "testData1": "test",
            },
            {
                "testData2": "test",
                "testData2": "test",
                "testData3": "test",
            }
        ]
    },
        {
        "isSuccess": "true",
        "errorMessage": "",
        "teamEncodedId": "record2",
        "record": [
            {
                "testData3": "test",
                "testData3": "test",
                "testData3": "test",
            },
            {
                "testData4": "test",
                "testData4": "test",
                "testData4": "test"
            }
        ]
    }
]
 var array2 = ["record1","record2","record3","record4"]
 var array1Group = array1 groupBy ((item, index) -> item.recordId default item.teamEncodedId)
---
array2 map ((item, index) -> 
   if(namesOf(array1Group) contains item) {(array1Group[item])}  else  {
        "isSuccess": "true",
        "errorMessage": "",
        "recordId": item,
        "record": [ ]
    }
)