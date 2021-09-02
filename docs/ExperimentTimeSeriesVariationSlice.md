# LaunchDarklyApi::ExperimentTimeSeriesVariationSlice

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | **Float** |  | [optional] |
| **count** | **Integer** |  | [optional] |
| **cumulative_value** | **Float** |  | [optional] |
| **cumulative_count** | **Integer** |  | [optional] |
| **conversion_rate** | **Float** |  | [optional] |
| **cumulative_conversion_rate** | **Float** |  | [optional] |
| **confidence_interval** | [**ConfidenceIntervalRep**](ConfidenceIntervalRep.md) |  | [optional] |
| **cumulative_confidence_interval** | [**ConfidenceIntervalRep**](ConfidenceIntervalRep.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ExperimentTimeSeriesVariationSlice.new(
  value: null,
  count: null,
  cumulative_value: null,
  cumulative_count: null,
  conversion_rate: null,
  cumulative_conversion_rate: null,
  confidence_interval: null,
  cumulative_confidence_interval: null
)
```

