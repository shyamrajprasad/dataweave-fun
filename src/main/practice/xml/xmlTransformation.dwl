%dw 2.0
output application/json  
---
{
  user: {
    username: payload.user.username,
    Info: {
      (payload.user.*Info map ((item, index) -> {
        (item.@name): item
      }))
    }
  }
}