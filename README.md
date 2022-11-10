# Valtech B2B public Bicep registry modules
This repo contains the source code of all, currently available, Bicep modules in the Valtech B2B Bicep public module registry.

## Usage
You can use the registry like this:
```
module rg 'br:brvaltechb2b.azurecr.io/bicep/modules/resources/resourcegroups:1:0' = {
  name: 'deployRG'
  params: {
    name: 'rg-we-bicepregistry'
    location: location
  }
}
```

To make the usage a bit easier you could add a bicepconfig.json file to the root of your project.
The bicep config allows you to define an Alias for the registry:
```
{
  "moduleAliases": {
    "br": {
      "valtech-b2b": {
        "registry": "brvaltechb2b.azurecr.io",
        "modulePath": "bicep/modules"
      }
    }
  }
}
```

After setting up the bicep config you can use the registry like this:
```
module rg 'br/valtech-b2b:resources/resourcegroups:1:0' = {
  name: 'deployRG'
  params: {
    name: 'rg-we-bicepregistry'
    location: location
  }
}
```
## Modules

// TODO

## Contributing
We accept contributions from anyone. Please refer to [the contibution guide](./CONTRIBUTING.md) for information on contributing modules.