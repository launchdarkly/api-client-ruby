# LaunchDarklyApi::InsightsChartMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **summary** | **Hash&lt;String, Object&gt;** |  |  |
| **name** | **String** | Name of the chart | [optional] |
| **metrics** | [**Hash&lt;String, InsightsChartMetric&gt;**](InsightsChartMetric.md) |  | [optional] |
| **x_axis** | [**InsightsChartSeriesMetadataAxis**](InsightsChartSeriesMetadataAxis.md) |  |  |
| **y_axis** | [**InsightsChartSeriesMetadataAxis**](InsightsChartSeriesMetadataAxis.md) |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::InsightsChartMetadata.new(
  summary: null,
  name: deploymentFrequency,
  metrics: null,
  x_axis: null,
  y_axis: null
)
```

