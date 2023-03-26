%dw 2.0
output application/json
---
{
    a: ["Bond", "James", "Bond"] find "Bond",
    b: "I heart DataWeave" find /\w*ea\w*(\b)/,
    c: "aabccdbce" find "a"
}    
