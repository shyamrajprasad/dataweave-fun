%dw 2.0
output application/json
---
readUrl("https://jsonplaceholder.typicode.com/posts/1", "application/json")