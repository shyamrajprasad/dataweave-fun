%dw 2.0
import * from dw::core::URL
output application/json
---
{
  "decodeURIComponent": {
    "decodeURIComponent" : decodeURIComponent("%20PATH/%20TO%20/DECODE%20"),
    "decodeURIComponent" : decodeURIComponent("%3B%2C%2F%3F%3A%40%26%3D"),
    "decodeURIComponent" : decodeURIComponent("%2D%5F%2E%21%7E%2A%27%28%29%24"),
  }
}