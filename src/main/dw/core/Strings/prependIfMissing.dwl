%dw 2.0
import prependIfMissing from dw::core::Strings
output application/json
---
{
  "a": prependIfMissing(null, ""),
  "b": prependIfMissing("abc", ""),
  "c": prependIfMissing("", "xyz"),
  "d": prependIfMissing("abc", "xyz"),
  "e": prependIfMissing("xyzabc", "xyz")
}