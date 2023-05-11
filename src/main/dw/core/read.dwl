%dw 2.0
output application/xml

fun read(stringToParse: String | Binary, contentType: String = "application/dw", 
         readerProperties: Object = {}): Any = native("system::read")

---
read('{ "hello" : "world" }','application/json')