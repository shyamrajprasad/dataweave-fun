%dw 2.0
import appendIfMissing from dw::core::Strings
output application/json
---
{
  "a": appendIfMissing(null, ""),
  "b": appendIfMissing("abc", ""),
  "c": appendIfMissing("", "xyz") ,
  "d": appendIfMissing("abc", "xyz") ,
  "e": appendIfMissing("abcxyz", "xyz")
}