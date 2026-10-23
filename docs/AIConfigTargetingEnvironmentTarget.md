# LaunchDarklyApi::AIConfigTargetingEnvironmentTarget

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **context_kind** | **String** | The context kind |  |
| **values** | **Array&lt;String&gt;** | The context keys to target |  |
| **variation** | **Integer** | Index of the variation to serve |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AIConfigTargetingEnvironmentTarget.new(
  context_kind: null,
  values: null,
  variation: null
)
```

