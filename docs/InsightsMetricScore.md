# LaunchDarklyApi::InsightsMetricScore

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **score** | **Integer** | The score for the metric |  |
| **aggregate_of** | **Array&lt;String&gt;** | The keys of the metrics that were aggregated to calculate this score | [optional] |
| **diff_vs_last_period** | **Integer** |  | [optional] |
| **indicator** | **String** |  |  |
| **indicator_range** | [**InsightsMetricIndicatorRange**](InsightsMetricIndicatorRange.md) |  |  |
| **last_period** | [**InsightsMetricScore**](InsightsMetricScore.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::InsightsMetricScore.new(
  score: 100,
  aggregate_of: [&quot;deploymentFrequency&quot;,&quot;leadTime&quot;],
  diff_vs_last_period: null,
  indicator: null,
  indicator_range: null,
  last_period: null
)
```

