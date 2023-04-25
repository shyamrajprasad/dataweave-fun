import diff from dw::util::Diff
ns ns0 http://locahost.com
ns ns1 http://acme.com
output application/dw
---
{
  "a": diff({a: 1}, {b:1}),
  "b": diff({ns0#a: 1}, {ns1#a:1}),
  "c": diff([1,2,3], []),
  "d": diff([], [1,2,3]),
  "e": diff([1,2,3], [1,2,3, 4]),
  "f": diff([{a: 1}], [{a: 2}]),
  "g": diff({a @(c: 2): 1}, {a @(c: 3): 1}),
  "h": diff(true, false),
  "i": diff(1, 2),
  "j": diff("test", "other test"),
  "k": diff({a: 1}, {a:1}),
  "l": diff({ns0#a: 1}, {ns0#a:1}),
  "m": diff([1,2,3], [1,2,3]),
  "n": diff([], []),
  "o": diff([{a: 1}], [{a: 1}]),
  "p": diff({a @(c: 2): 1}, {a @(c:2): 1}),
  "q": diff(true, true),
  "r": diff(1, 1),
  "s": diff("other test", "other test"),
  "t": diff({a:1 ,b: 2},{b: 2, a:1}, {unordered: true}),
  "u": [{format: "ssn",data: "ABC"}] diff [{ format: "ssn",data: "ABC"}]
}