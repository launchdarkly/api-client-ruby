# LaunchDarklyApi::InsightsMetricTierDefinition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **indicator** | **String** | Metric indicator tier |  |
| **description** | **String** | Metric indicator description |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::InsightsMetricTierDefinition.new(
  indicator: excellent,
  description: at least 1 per day
)
```

