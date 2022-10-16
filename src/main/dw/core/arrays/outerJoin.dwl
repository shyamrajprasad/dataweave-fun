%dw 2.0
import * from dw::core::Arrays
var users = [
  { id: "1", name: "Shyam"
  },
  { id: "2", name: "Raj"
  },
  { id: "3", name: "Prasad"
  },
  { id: "5", name: "Pawan"
  }
]
var products = [
  { ownerId: "1", name: "DataWeave"
  },
  { ownerId: "1", name: "Java"
  },
  { ownerId: "3", name: "Python"
  },
  { ownerId: "4", name: "React"
  }
]
output application/json
---
outerJoin(users, products, (user) -> user.id, (product) -> product.ownerId)