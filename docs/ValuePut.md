# LaunchDarklyApi::ValuePut

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **setting** | **Object** | The variation value to set for the context. Must match the flag&#39;s variation type. | [optional] |
| **comment** | **String** | Optional comment describing the change | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ValuePut.new(
  setting: existing_variation_value_to_use,
  comment: make sure this context experiences a specific variation
)
```

