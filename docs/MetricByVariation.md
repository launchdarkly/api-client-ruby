# LaunchDarklyApi::MetricByVariation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **variation_key** | **String** | The variation key | [optional] |
| **metrics** | [**Metrics**](Metrics.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::MetricByVariation.new(
  variation_key: null,
  metrics: null
)
```

