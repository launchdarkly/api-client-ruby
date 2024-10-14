# LaunchDarklyApi::LayerPatchInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **comment** | **String** | Optional comment describing the update | [optional] |
| **environment_key** | **String** | The environment key used for making environment specific updates. For example, updating the reservation of an experiment | [optional] |
| **instructions** | **Array&lt;Hash&gt;** |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::LayerPatchInput.new(
  comment: Optional comment,
  environment_key: production,
  instructions: null
)
```

