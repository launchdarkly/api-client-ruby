# LaunchDarklyApi::Audience

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **environment** | [**EnvironmentSummary**](EnvironmentSummary.md) |  |  |
| **name** | **String** | The release phase name |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::Audience.new(
  environment: null,
  name: Phase 1 - Testing
)
```

