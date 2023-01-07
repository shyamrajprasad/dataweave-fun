%dw 2.0
output application/json
---
{
contentLength_method_1: sizeOf((write(payload, 'application/csv', {quoteHeader: true, quoteValues: true}))),  //use this for your use case
 
contentLength_method_2: (payload).^contentLength,    //This is printing null in DataWeave playground but try in studio, it should work by setting MimeType
 
contentLength_method_3: (payload.^raw).^contentLength //This is printing null in DataWeave playground but try in studio, it should work by setting MimeType
 
}