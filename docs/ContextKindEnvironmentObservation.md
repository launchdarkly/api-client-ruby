# LaunchDarklyApi::ContextKindEnvironmentObservation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **environment_key** | **String** | The environment key |  |
| **last_seen** | **Integer** |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ContextKindEnvironmentObservation.new(
  environment_key: production,
  last_seen: null
)
```

