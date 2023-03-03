%dw 2.0
output application/json
var commonKeys = keysOf(payload[0] -- (payload[0] -- payload[1]))
---
payload[0] -- (keysOf(payload[0]) -- commonKeys)
++ {(payload map ($ -- commonKeys))}