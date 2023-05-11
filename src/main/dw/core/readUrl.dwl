%dw 2.0
output application/json

fun readUrl(url: String, contentType: String = "application/dw", 
    readerProperties: Object = {}): Any = native("system::readUrl")


---
readUrl("https://jsonplaceholder.typicode.com/posts/1", "application/json")