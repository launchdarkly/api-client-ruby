# LaunchDarklyApi::StopEnvironmentReleaseRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resolution** | [**EnvironmentReleaseResolution**](EnvironmentReleaseResolution.md) |  |  |
| **comment** | **String** | Optional comment written to the flag&#39;s audit-log entry. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::StopEnvironmentReleaseRequest.new(
  resolution: null,
  comment: null
)
```

