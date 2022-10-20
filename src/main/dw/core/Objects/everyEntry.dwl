%dw 2.0
import everyEntry from dw::core::Objects
output application/json
---
{
    a: {} everyEntry (value, key) -> value is String,
    b: {a: "", b: "123"} everyEntry (value, key) -> value is String,
    c: {a: "", b: 123} everyEntry (value, key) -> value is String,
    d: {a: "", b: 123} everyEntry (value, key) -> key as String == "a",
    e: {a: ""} everyEntry (value, key) -> key as String == "a",
    f: null everyEntry ((value, key) -> key as String == "a")
}