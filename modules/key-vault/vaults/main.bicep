@description('Required. The name of the availability set that is being created.')
param name string

@allowed([
  'A'
])
@description('Required. The SKU family name for the key vault.')
param skuFamily string

@allowed([
  'premium'
  'standard'
])
@description('Required. The SKU name for the key vault')
param skuName string

@description('Required. Resource location.')
param location string

resource keyVault 'Microsoft.KeyVault/vaults@2022-07-01' = {
  name: name
  location: location
  properties: {
    sku: {
      family: skuFamily
      name: skuName
    }
    tenantId: tenant().tenantId
  }
}
