%dw 2.0
import * from dw::core::Strings
output application/json
---
 {
   "a": wrapIfMissing(null, "'"),
   "b": wrapIfMissing("", "'"),
   "c": wrapIfMissing("ab", "x"),
   "d": wrapIfMissing("'ab'", "'"),
   "e": wrapIfMissing("/", '/'),
   "f": wrapIfMissing("a/b/c", '/'),
   "g": wrapIfMissing("/a/b/c", '/'),
   "h": wrapIfMissing("a/b/c/", '/')
 }