%dw 2.0
output application/json
var mapping = {
    name : "name",
    companyName: "company.name",
    city : "company.address.city"

}

@TailRec()
fun getValue(keys:Array<String>, value) =
    if(sizeOf(keys) == 1)
        value[(keys[0])]  
    else
        getValue(keys[1 to -1], value[(keys[0])])

---

mapping mapObject ((value, key, index) -> 
    (key) : getValue((value splitBy  "."),payload)
)

