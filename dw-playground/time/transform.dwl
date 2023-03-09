%dw 2.0
output application/json
---
{
    reduce: dw::util::Timer::time(() -> payload reduce ($$ ++ $)),
    parentheses: dw::util::Timer::time(() ->{(payload)})
}