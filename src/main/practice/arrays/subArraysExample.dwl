//https://help.mulesoft.com/s/question/0D52T000068fXukSAE/how-to-aggregate-array-list-from-different-objects-based-on-the-array-list-value-and-create-a-sub-array-list
%dw 2.0
output application/json
var x = [
  {
    "metric": "http_responses",
    "points": [
      [
        1669161480,
        3
      ]
    ],
    "host": "ip-99-99-99-235",
    "tags": [
      "availability_zone:us-west-2c",
      "deployment:blue",
      "status:200"
    ]
  },
  {
    "metric": "http_responses",
    "points": [
      [
        1669161480,
        3
      ]
    ],
    "host": "ip-99-99-99-235",
    "tags": [
      "availability_zone:us-west-2c",
      "deployment:blue",
      "status:200"
    ]
  },
  {
    "metric": "http_responses",
    "points": [
      [
        1669161480,
        4
      ]
    ],
    "host": "ip-99-99-99-235",
    "tags": [
      "availability_zone:us-west-2c",
      "deployment:blue",
      "status:200"
    ]
  },
  {
    "metric": "http_responses",
    "points": [
      [
        1669161481,
        1
      ]
    ],
    "host": "ip-99-99-99-236",
    "tags": [
      "availability_zone:us-west-2c",
      "deployment:blue",
      "status:200"
    ]
  },
  {
    "metric": "http_responses",
    "points": [
      [
        1669161481,
        2
      ]
    ],
    "host": "ip-99-99-99-236",
    "tags": [
      "availability_zone:us-west-2c",
      "deployment:blue",
      "status:200"
    ]
  },
  {
    "metric": "http_responses",
    "points": [
      [
        1669161482,
        2
      ]
    ],
    "host": "ip-99-99-99-237",
    "tags": [
      "availability_zone:us-west-2c",
      "deployment:blue",
      "status:200"
    ]
  }
]
---
valuesOf(((x distinctBy $) groupBy $.points[0][0])
mapObject ((value, key, index) -> 
    (key) : (value[0] - "points") ++ {points : [flatten(value.points) reduce ($$ ++ $) distinctBy $]}  
))
