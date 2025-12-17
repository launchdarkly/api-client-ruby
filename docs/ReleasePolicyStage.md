# LaunchDarklyApi::ReleasePolicyStage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **allocation** | **Integer** |  |  |
| **duration_millis** | **Integer** |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ReleasePolicyStage.new(
  allocation: 25000,
  duration_millis: 60000
)
```

