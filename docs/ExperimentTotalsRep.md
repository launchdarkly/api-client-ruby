# LaunchDarklyApi::ExperimentTotalsRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cumulative_value** | **Float** |  | [optional] |
| **cumulative_count** | **Integer** |  | [optional] |
| **cumulative_impression_count** | **Integer** |  | [optional] |
| **cumulative_conversion_rate** | **Float** |  | [optional] |
| **cumulative_confidence_interval** | [**ConfidenceIntervalRep**](ConfidenceIntervalRep.md) |  | [optional] |
| **p_value** | **Float** |  | [optional] |
| **improvement** | **Float** |  | [optional] |
| **min_sample_size** | **Integer** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ExperimentTotalsRep.new(
  cumulative_value: null,
  cumulative_count: null,
  cumulative_impression_count: null,
  cumulative_conversion_rate: null,
  cumulative_confidence_interval: null,
  p_value: null,
  improvement: null,
  min_sample_size: null
)
```

