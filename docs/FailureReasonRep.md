# LaunchDarklyApi::FailureReasonRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attribute** | **String** | The attribute that failed validation |  |
| **reason** | **String** | The reason the attribute failed validation |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::FailureReasonRep.new(
  attribute: projectKey,
  reason: must be present
)
```

