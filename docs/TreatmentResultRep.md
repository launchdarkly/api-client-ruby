# LaunchDarklyApi::TreatmentResultRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **treatment_id** | **String** | The ID of the treatment | [optional] |
| **treatment_name** | **String** | The name of the treatment | [optional] |
| **mean** | **Float** | The average value of the variation in this sample. It doesn’t capture the uncertainty in the measurement, so it should not be the only measurement you use to make decisions. | [optional] |
| **credible_interval** | [**CredibleIntervalRep**](CredibleIntervalRep.md) |  | [optional] |
| **p_best** | **Float** | The likelihood that this variation has the biggest effect on the primary metric. The variation with the highest probability is likely the best of the variations you&#39;re testing | [optional] |
| **relative_differences** | [**Array&lt;RelativeDifferenceRep&gt;**](RelativeDifferenceRep.md) | Estimates of the relative difference between this treatment&#39;s mean and the mean of each other treatment | [optional] |
| **units** | **Integer** | The number of end users in this variation of the experiment | [optional] |
| **distribution** | [**Distribution**](Distribution.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::TreatmentResultRep.new(
  treatment_id: 92b8354e-360e-4d67-8f13-fa6a46ca8077,
  treatment_name: variation 25% off,
  mean: 0.5432525951557093,
  credible_interval: null,
  p_best: 0.6083,
  relative_differences: [{&quot;fromTreatmentId&quot;:&quot;92b8354e-360e-4d67-8f13-fa6a46ca8077&quot;,&quot;lower&quot;:-0.13708601934659803,&quot;upper&quot;:0.42655970355712425}],
  units: 76,
  distribution: null
)
```

