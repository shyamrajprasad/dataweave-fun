%dw 2.0
output application/json
var myUser = { user: { friend: { name: "Shyam" }, id: 1, name: "Raj" }}

---
{
    a: log("WARNING", "Houston, we have a problem"),
    b: log("User", myUser.user).friend.name

}    