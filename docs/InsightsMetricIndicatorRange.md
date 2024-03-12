# LaunchDarklyApi::InsightsMetricIndicatorRange

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **min** | **Integer** | The minimum value for the indicator range |  |
| **max** | **Integer** | The maximum value for the indicator range |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::InsightsMetricIndicatorRange.new(
  min: 0,
  max: 100
)
```

