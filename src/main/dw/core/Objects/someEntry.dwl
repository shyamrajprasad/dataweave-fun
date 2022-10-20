%dw 2.0
import someEntry from dw::core::Objects
output application/json
---
{
    a: {} someEntry (value, key) -> value is String,
    b: {a: "", b: "123"} someEntry (value, key) -> value is String,
    c: {a: "", b: 123} someEntry (value, key) -> value is String,
    d: {a: "", b: 123} someEntry (value, key) -> key as String == "a",
    e: {a: ""} someEntry (value, key) -> key as String == "b",
    f: null someEntry (value, key) -> key as String == "a"
}