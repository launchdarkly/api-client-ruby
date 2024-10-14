# LaunchDarklyApi::LayerPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | Unique identifier for the layer |  |
| **name** | **String** | Layer name |  |
| **description** | **String** | The checkout flow for the application |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::LayerPost.new(
  key: checkout-flow,
  name: Checkout Flow,
  description: null
)
```

