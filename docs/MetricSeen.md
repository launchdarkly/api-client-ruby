# LaunchDarklyApi::MetricSeen

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ever** | **Boolean** | Whether the metric has received an event for this iteration | [optional] |
| **timestamp** | **Integer** | Timestamp of when the metric most recently received an event for this iteration | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::MetricSeen.new(
  ever: true,
  timestamp: 1657129307
)
```

