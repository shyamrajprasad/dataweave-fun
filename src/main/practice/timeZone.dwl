%dw 2.0
output application/json
import java!java::time::ZoneId
var timeZones = ZoneId::getAvailableZoneIds()
var a = [
    {
        "timeZone": "Asia/Calcutta"
    },
    {
        "timeZone": "India"
    },
    {
        "timeZone": "America/New_York"
    }
]

---
a map ((item, index) ->
    status : if(timeZones contains  item.timeZone) "valid"
             else "invalid"
 )