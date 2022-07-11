# LaunchDarklyApi::TeamPatchInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **comment** | **String** | Optional comment describing the update | [optional] |
| **instructions** | **Array&lt;Hash&gt;** |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::TeamPatchInput.new(
  comment: Optional comment about the update,
  instructions: null
)
```

