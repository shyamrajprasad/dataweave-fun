%dw 2.0
var x =
[
  {
    "XML_P": "<product variation-Hinban="V-HINBAN" hinban="P-HINBAN"><spec><group name="4K LCD TV" ><group name="Video"><attribute name="Panel" value="1997135874"/><attribute name="Panel size" value="1997135878" /></group><attribute name="Voice" value="1997135877"/></group><attribute name="Other notes" value="1997135876"/></spec></product>",
    "HINBAN": "SH-AAA-01",
    "PRIMARY_HINBAN": "SH-AAA",
    "ID": "9001",
    "VALUE": "LCD"
  },
  {
    "XML_P": "<product variation-Hinban="V-HINBAN" hinban="P-HINBAN"><spec><group name="4K LCD TV" ><group name="Video"><attribute name="Panel" value="1997135874"/><attribute name="Panel size" value="1997135878" /></group><attribute name="Voice" value="1997135877"/></group><attribute name="Other notes" value="1997135876"/></spec></product>",
    "HINBAN": "SH-AAA-01",
    "PRIMARY_HINBAN": "SH-AAA",
    "ID": "9002",
    "VALUE": "550m"
  },
  {
    "XML_P": "<product variation-Hinban="V-HINBAN" hinban="P-HINBAN"><spec><group name="4K LCD TV" ><group name="Video"><attribute name="Panel" value="1997135874"/><attribute name="Panel size" value="1997135878" /></group><attribute name="Voice" value="1997135877"/></group><attribute name="Other notes" value="1997135876"/></spec></product>",
    "HINBAN": "SH-AAA-01",
    "PRIMARY_HINBAN": "SH-AAA",
    "ID": "9003",
    "VALUE": "Speaker1"
  },
  {
    "XML_P": "<product variation-Hinban="V-HINBAN" hinban="P-HINBAN"><spec><group name="4K LCD TV" ><group name="Video"><attribute name="Panel" value="1997135874"/><attribute name="Panel size" value="1997135878" /></group><attribute name="Voice" value="1997135877"/></group><attribute name="Other notes" value="1997135876"/></spec></product>",
    "HINBAN": "SH-AAA-01",
    "PRIMARY_HINBAN": "SH-AAA",
    "ID": "9004",
    "VALUE": "None"
  },
  {
    "XML_P": "<product variationHinban="V-HINBAN" hinban="P-HINBAN"><spec><group name="PlasmaTV" ><group name="Monitor"><attribute name="Panel" value="9005"/><attribute name="Panel size" value="9006" /></group><attribute name="Parts" value="9007"/></group><attribute name="Other notes" value="9008"/><attribute name="Other image" value="9009"/></spec></product>",
    "HINBAN": "SH-AAA-02",
    "PRIMARY_HINBAN": "SH-AAA",
    "ID": "9005",
    "VALUE": "Plasma Displays"
  },
  {
    "XML_P": "<product variationHinban="V-HINBAN" hinban="P-HINBAN"><spec><group name="PlasmaTV" ><group name="Monitor"><attribute name="Panel" value="9005"/><attribute name="Panel size" value="9006" /></group><attribute name="Parts" value="9007"/></group><attribute name="Other notes" value="9008"/><attribute name="Other image" value="9009"/></spec></product>",
    "HINBAN": "SH-AAA-02",
    "PRIMARY_HINBAN": "SH-AAA",
    "ID": "9006",
    "VALUE": "660m"
  },
  {
    "XML_P": "<product variationHinban="V-HINBAN" hinban="P-HINBAN"><spec><group name="PlasmaTV" ><group name="Monitor"><attribute name="Panel" value="9005"/><attribute name="Panel size" value="9006" /></group><attribute name="Parts" value="9007"/></group><attribute name="Other notes" value="9008"/><attribute name="Other image" value="9009"/></spec></product>",
    "HINBAN": "SH-AAA-02",
    "PRIMARY_HINBAN": "SH-AAA",
    "ID": "9007",
    "VALUE": "Monitor"
  },
  {
    "XML_P": "<product variationHinban="V-HINBAN" hinban="P-HINBAN"><spec><group name="PlasmaTV" ><group name="Monitor"><attribute name="Panel" value="9005"/><attribute name="Panel size" value="9006" /></group><attribute name="Parts" value="9007"/></group><attribute name="Other notes" value="9008"/><attribute name="Other image" value="9009"/></spec></product>",
    "HINBAN": "SH-AAA-02",
    "PRIMARY_HINBAN": "SH-AAA",
    "ID": "9008",
    "VALUE": "None"
  },
  {
    "XML_P": "<product variationHinban="V-HINBAN" hinban="P-HINBAN"><spec><group name="PlasmaTV" ><group name="Monitor"><attribute name="Panel" value="9005"/><attribute name="Panel size" value="9006" /></group><attribute name="Parts" value="9007"/></group><attribute name="Other notes" value="9008"/><attribute name="Other image" value="9009"/></spec></product>",
    "HINBAN": "SH-AAA-02",
    "PRIMARY_HINBAN": "SH-AAA",
    "ID": "9009",
    "VALUE": "Image1"
  }
]
var y = x groupBy ($.HINBAN ++ $.PRIMARY_HINBAN) mapObject (
    ($$) : {($ map (
        (($.ID) as String ): $.VALUE
))})
var x1 = x groupBy ($.HINBAN ++ $.PRIMARY_HINBAN) 

output application/json writeAttributes=true
 import * from dw::util::Tree
//if (path[-1].selector == "value") 
var z = mapLeafValues ((value, path) -> 
  payload.product.@variationHinban ++ payload.product.@hinban
)
---
z