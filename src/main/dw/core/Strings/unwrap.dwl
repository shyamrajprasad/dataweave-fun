%dw 2.0
import unwrap from dw::core::Strings
output application/json
---
{
  "a": unwrap(null, ""),
  "b": unwrap(null, '\0'),
  "c": unwrap("'abc'", "'"),
  "d": unwrap("AABabcBAA", 'A'),
  "e": unwrap("A", '#'),
  "f": unwrap("#A", '#'),
  "g": unwrap("A#", '#')
}