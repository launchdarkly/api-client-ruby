# LaunchDarklyApi::InsightsChartSeriesMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the series |  |
| **count** | **Integer** | Aggregate count of the series values | [optional] |
| **bounds** | [**Array&lt;InsightsChartBounds&gt;**](InsightsChartBounds.md) | Bounds for the series data | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::InsightsChartSeriesMetadata.new(
  name: null,
  count: null,
  bounds: null
)
```

