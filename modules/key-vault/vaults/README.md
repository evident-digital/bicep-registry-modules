# Key Vault module

Key Vault module

## Description

This module deploys Microsoft.Vaults Key Vault

## Parameters

| Name        | Type     | Required | Description                                                       |
| :---------- | :------: | :------: | :---------------------------------------------------------------- |
| `name`      | `string` | Yes      | Required. The name of the availability set that is being created. |
| `skuFamily` | `string` | Yes      | Required. The SKU family name for the key vault.                  |
| `skuName`   | `string` | Yes      | Required. The SKU name for the key vault                          |
| `location`  | `string` | Yes      | Required. Resource location.                                      |

## Outputs

| Name | Type | Description |
| :--- | :--: | :---------- |

## Examples

### Example 1

```bicep
module kv 'br/valtech-b2b:key-vault/vault:1.0' = {
  name: 'testKV'
  params: {
    name: 'kv-we-test'
    location: resourceGroup().location
    skuFamily: 'A'
    skuName: 'standard'
  }
}
```