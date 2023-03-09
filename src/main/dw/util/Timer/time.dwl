%dw 2.0
output application/json
fun myFunction() = dw::Runtime::wait("My result",100)
fun myFunction2() = sum([1,2,3,4])
---
{ testing: [
    dw::util::Timer::time(() -> myFunction()),
    dw::util::Timer::time(() -> myFunction2())
  ]
}