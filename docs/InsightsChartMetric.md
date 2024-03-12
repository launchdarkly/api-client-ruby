# LaunchDarklyApi::InsightsChartMetric

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **indicator** | **String** | Metric indicator tier |  |
| **value** | **Float** | Metric value |  |
| **unit** | **String** | Metric unit |  |
| **modifier** | **String** | Metric modifier |  |
| **tiers** | [**Array&lt;InsightsMetricTierDefinition&gt;**](InsightsMetricTierDefinition.md) | Metric indicator tiers |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::InsightsChartMetric.new(
  indicator: excellent,
  value: 5,
  unit: count,
  modifier: per day,
  tiers: null
)
```

