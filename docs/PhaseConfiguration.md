# LaunchDarklyApi::PhaseConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bake_time_duration_ms** | **Integer** | The bake time duration in milliseconds | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::PhaseConfiguration.new(
  bake_time_duration_ms: 60000
)
```

