%dw 2.0
output application/json
---
payload flatMap ((item, index) -> 
            if(sizeOf(payload) == index + 1) 
                item  
            else 
                item.position as Number to (payload[index + 1].position - 1) 
                    map ((item1, index1) -> 
                            item  update {
                                case .position -> item1
                            }
                        )
        )