%dw 2.0
output application/json
var x = [ 
        { 
            "time": 3, 
            "employee": "abc", 
            "department": "hr" 
        }, 
        { 
            "time": 5, 
            "employee": "abcd", 
            "department": "developer" 
        }, 
        { 
            "time": 6, 
            "employee": "abcde", 
            "department": "hr" 
        }, 
        { 
            "time": 7, 
            "employee": "xyz", 
            "department": "hr" 
        }, 
        { 
            "time": 8, 
            "employee": "xyza", 
            "department": "developer" 
        }, 
        { 
            "time": 8, 
            "employee": "xyzab", 
            "department": "developer" 
        } 
    ]
---
valuesOf(x groupBy $.department) flatMap (
        do {
           	var myVar = $ orderBy $.time
            var start = myVar[0].time 
           	---
            myVar map ((item, index) -> 
                        
                        item ++ { start: start + (1 * index + 1) + (3 * index), end: start + (1 * index + 1) + (3 * index) + 3 }
                           
                    )
}
)