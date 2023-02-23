%dw 2.0
output application/json
import java!java::util::TimeZone
---
TimeZone::getAvailableIDs()