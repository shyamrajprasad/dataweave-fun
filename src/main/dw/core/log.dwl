%dw 2.0
output application/json
var myUser = {user: {friend: {name: "Shoki"}, id: 1, name: "Tomo"}, accountId: "leansh" }

---
{
    a:log("WARNING", "Houston, we have a problem"),
    b:log("User", myUser.user).friend.name

}    