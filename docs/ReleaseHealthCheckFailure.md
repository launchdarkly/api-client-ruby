# LaunchDarklyApi::ReleaseHealthCheckFailure

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **kind** | [**ReleaseHealthCheckKind**](ReleaseHealthCheckKind.md) |  |  |
| **metric_key** | **String** | The metric key associated with a metric event check. | [optional] |
| **message** | **String** | A description of the failed health check. |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ReleaseHealthCheckFailure.new(
  kind: null,
  metric_key: null,
  message: null
)
```

