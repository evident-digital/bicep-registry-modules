/*
Write deployment tests in this file. Any module that references the main
module file is a deployment test. Make sure at least one test is added.
*/

param location string = resourceGroup().location

module kv '../main.bicep' = {
  name: 'testKV'
  params: {
    name: 'kv-we-test'
    location: location
    skuFamily: 'A'
    skuName: 'standard'
  }
}
