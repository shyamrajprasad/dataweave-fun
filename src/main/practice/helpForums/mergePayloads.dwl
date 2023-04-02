//https://help.mulesoft.com/s/question/0D52T00006PqiOASAZ/how-can-i-merge-two-payloads
%dw 2.0
output application/json
var x =[
  {
    "relatedId": "0YW3H0000004DxsWAE", 
    "type": "secondResidence",
    "Premium_wo_taxes": 123.45,
    "TaxAmount": 12.45,
    "TotalAmount": 135.9,
    "CommissionGiveUp": "10%"
  },
  {
    "relatedId": "0YW3H0000004DxtWAE",
    "type": "vehicle",
    "Premium_wo_taxes": 123.45,
    "TaxAmount": 12.45,
    "TotalAmount": 135.9,
    "CommissionGiveUp": "10%"
  },
   {
    "relatedId": "0YW3H0000004DxtWAE", 
    "type": "vehicle2",
    "Premium_wo_taxes": 123.45,
    "TaxAmount": 12.45,
    "TotalAmount": 135.9,
    "CommissionGiveUp": "10%"
  }
]
var y = [
  {
    "product": {
      "name": "PRIVATE",
      "Product_Sum_Of_Premiums": 246.9,
      "insuredItems": [
        {
          "type": "mobility",
          "Premium_wo_taxes": 123.45,
          "TaxAmount": 12.45,
          "TotalAmount": 135.9,
          "insuredItems": {
            "policyAssetId": "0YW3H0000004DxtWAE" 
          }
        },
        {
          "type": "household",
          "Premium_wo_taxes": 123.45,
          "TaxAmount": 12.45,
          "TotalAmount": 135.9,
          "insuredItems": {
            "policyAssetId": "0YW3H0000004DxsWAE" 
          }
        }
      ]
    }
  },
  {
    "product": {
      "name": "PRIVATE",
      "Product_Sum_Of_Premiums": 246.9,
      "insuredItems": [
        {
          "type": "mobility",
          "Premium_wo_taxes": 123.45,
          "TaxAmount": 12.45,
          "TotalAmount": 135.9,
          "insuredItems": {
            "policyAssetId": "0YW3H0000004DxtWAE"
          }
        },
        {
          "type": "household",
          "Premium_wo_taxes": 123.45,
          "TaxAmount": 12.45,
          "TotalAmount": 135.9,
          "insuredItems": {
            "policyAssetId": "0YW3H0000004DxsWAE" 
          }
        }
      ]
    }
  }
]
var groupX= x groupBy $.relatedId
---
y map ($  update {
    case .product.insuredItems -> $ map (
        $  update {
            case .insuredItems -> groupX[$.policyAssetId] map ((item, index) -> $ ++ item -"relatedId")
        }
    )
} )