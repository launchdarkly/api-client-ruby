# LaunchDarklyApi::InsightGroupScores

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **overall** | [**InsightsMetricScore**](InsightsMetricScore.md) |  |  |
| **deployment_frequency** | [**InsightsMetricScore**](InsightsMetricScore.md) |  |  |
| **deployment_failure_rate** | [**InsightsMetricScore**](InsightsMetricScore.md) |  |  |
| **lead_time** | [**InsightsMetricScore**](InsightsMetricScore.md) |  |  |
| **impact_size** | [**InsightsMetricScore**](InsightsMetricScore.md) |  |  |
| **experimentation_coverage** | [**InsightsMetricScore**](InsightsMetricScore.md) |  |  |
| **flag_health** | [**InsightsMetricScore**](InsightsMetricScore.md) |  |  |
| **velocity** | [**InsightsMetricScore**](InsightsMetricScore.md) |  |  |
| **risk** | [**InsightsMetricScore**](InsightsMetricScore.md) |  |  |
| **efficiency** | [**InsightsMetricScore**](InsightsMetricScore.md) |  |  |
| **creation_ratio** | [**InsightsMetricScore**](InsightsMetricScore.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::InsightGroupScores.new(
  overall: null,
  deployment_frequency: null,
  deployment_failure_rate: null,
  lead_time: null,
  impact_size: null,
  experimentation_coverage: null,
  flag_health: null,
  velocity: null,
  risk: null,
  efficiency: null,
  creation_ratio: null
)
```

