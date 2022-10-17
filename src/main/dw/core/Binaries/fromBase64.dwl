%dw 2.0

import dw::Crypto
import * from dw::core::Binaries

var emailChecksum = Crypto::MD5("achaval@gmail.com" as Binary)
var image = readUrl(log("https://www.gravatar.com/avatar/$(emailChecksum)"), "application/octet-stream")

output application/json
---

fromBase64(toBase64(image))