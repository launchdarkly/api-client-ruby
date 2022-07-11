# LaunchDarklyApi::TreatmentResultRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **treatment_id** | **String** |  | [optional] |
| **treatment_name** | **String** |  | [optional] |
| **mean** | **Float** |  | [optional] |
| **credible_interval** | [**CredibleIntervalRep**](CredibleIntervalRep.md) |  | [optional] |
| **p_best** | **Float** |  | [optional] |
| **relative_differences** | [**Array&lt;RelativeDifferenceRep&gt;**](RelativeDifferenceRep.md) |  | [optional] |
| **units** | **Integer** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::TreatmentResultRep.new(
  treatment_id: null,
  treatment_name: null,
  mean: null,
  credible_interval: null,
  p_best: null,
  relative_differences: null,
  units: null
)
```

