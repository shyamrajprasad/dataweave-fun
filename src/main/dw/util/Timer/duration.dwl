%dw 2.0
output application/json
---
dw::util::Timer::duration(() -> sum(1 to 10000))