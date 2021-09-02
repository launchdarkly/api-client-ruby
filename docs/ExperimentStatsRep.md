# LaunchDarklyApi::ExperimentStatsRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **p_value** | **Float** |  | [optional] |
| **chi2** | **Float** |  | [optional] |
| **winning_variation_idx** | **Integer** |  | [optional] |
| **min_sample_size_met** | **Boolean** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ExperimentStatsRep.new(
  p_value: null,
  chi2: null,
  winning_variation_idx: null,
  min_sample_size_met: null
)
```

