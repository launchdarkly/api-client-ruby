# LaunchDarklyApi::TeamsPatchInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **comment** | **String** | Optional comment describing the update | [optional] |
| **instructions** | **Array&lt;Hash&gt;** |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::TeamsPatchInput.new(
  comment: Optional comment about the update,
  instructions: null
)
```

