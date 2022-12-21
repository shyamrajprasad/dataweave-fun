%dw 2.0
import * from dw::core::Strings
output application/json
---
{   "a": pluralize("foot"),
    "b": pluralize("child"),
    "c": pluralize("boss"),
    "d": pluralize("city")
}
