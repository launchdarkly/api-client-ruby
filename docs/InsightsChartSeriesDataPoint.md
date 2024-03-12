# LaunchDarklyApi::InsightsChartSeriesDataPoint

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x** | **Integer** | X-axis value |  |
| **y** | **Integer** | Y-axis value |  |
| **values** | **Hash&lt;String, Object&gt;** | Additional values for the data point | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::InsightsChartSeriesDataPoint.new(
  x: 1617225600000,
  y: 100,
  values: null
)
```

