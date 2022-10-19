%dw 2.0
output application/json
---
{
    a: sizeOf([ "a", "b", "c" ]),
    
    "arraySizes": {
            size3: sizeOf([ 1, 2, 3 ]),
            size2: sizeOf([ [ 1, 2, 3 ], [ 4 ] ]),
            size0: sizeOf([])
        },
    objectSizes: {
            sizeIs2: sizeOf({ a: 1, b: 2 }),
            sizeIs0: sizeOf({})
        },
    binarySizes: sizeOf([ "\u0000" as Binary, "\u0001" as Binary, "\u0002" as Binary ]),
    stringSizes: {
            sizeOfSting2: sizeOf("my string"),
            sizeOfEmptyString: sizeOf(""),
            sizeOfNumber: sizeOf("123" as Number)
        },
    nullSize: sizeOf(null)    

}    

