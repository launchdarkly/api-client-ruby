# LaunchDarklyApi::LayerRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | The key of the layer |  |
| **name** | **String** | The name of the layer |  |
| **description** | **String** | The description of the layer |  |
| **created_at** | **Integer** |  |  |
| **randomization_unit** | **String** | The unit of randomization for the layer | [optional] |
| **environments** | [**Hash&lt;String, LayerConfigurationRep&gt;**](LayerConfigurationRep.md) | The layer configurations for each requested environment | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::LayerRep.new(
  key: checkout-flow,
  name: Checkout Flow,
  description: The checkout flow for the application,
  created_at: null,
  randomization_unit: user,
  environments: null
)
```

