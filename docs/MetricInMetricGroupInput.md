# LaunchDarklyApi::MetricInMetricGroupInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | The metric key |  |
| **name_in_group** | **String** | Name of the metric when used within the associated metric group. Can be different from the original name of the metric |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::MetricInMetricGroupInput.new(
  key: metric-key-123abc,
  name_in_group: Step 1
)
```

