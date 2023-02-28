# LaunchDarklyApi::TreatmentResultRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **treatment_id** | **String** | The ID of the treatment | [optional] |
| **treatment_name** | **String** | The name of the treatment | [optional] |
| **mean** | **Float** | The average value of the variation in this sample. It doesn’t capture the uncertainty in the measurement, so it should not be the only measurement you use to make decisions. | [optional] |
| **credible_interval** | [**CredibleIntervalRep**](CredibleIntervalRep.md) |  | [optional] |
| **p_best** | **Float** | The likelihood that this variation has the biggest effect on the primary metric. The variation with the highest probability is likely the best of the variations you&#39;re testing | [optional] |
| **relative_differences** | [**Array&lt;RelativeDifferenceRep&gt;**](RelativeDifferenceRep.md) | A list of the ranges of the metric that you should have 90% confidence in, for each treatment ID. For example, if the range of the relative differences is [-1%, 4%], you can have 90% confidence that the population difference is a number between 1% lower and 4% higher than the control. | [optional] |
| **units** | **Integer** | The number of end users in this variation of the experiment | [optional] |

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
  units: 76
)
```

