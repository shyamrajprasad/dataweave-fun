%dw 2.0
output application/json
---
{
    a: "192.88.99.0/24" splitBy (/[.\/]/),
    b:("192.88.99.0" splitBy ("."))[0],
    c: 'root.sources.data.`test.branch.BranchSource`.source.traits' splitBy (/[.](?=(?:[^`]*`[^`]*`)*[^`]*$)/),
    d: "192.88.99.0" splitBy ("."),
    e: "a-b-c" splitBy ("-"),
    f: "hello world" splitBy (""),
    g: "first,middle,last" splitBy (","),
    h: "no split" splitBy ("NO"),
    i: "a-b-c" splitBy (/^*.b./),
    j: "hello world" splitBy (/\s/),
    k: "no match" splitBy (/^s/),
    l: "no match" splitBy (/^n../),
    m: "a1b2c3d4A1B2C3D" splitBy (/^*[0-9A-Z]/) }
   