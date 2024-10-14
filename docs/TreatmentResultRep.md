# LaunchDarklyApi::TreatmentResultRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **treatment_id** | **String** | The ID of the treatment | [optional] |
| **treatment_name** | **String** | The name of the treatment | [optional] |
| **mean** | **Float** | The average value of the variation in this sample. It doesn’t capture the uncertainty in the measurement, so it should not be the only measurement you use to make decisions. | [optional] |
| **data_mean** | **Float** | The mean of the data, with no priors effecting the result. | [optional] |
| **data_std_dev** | **Float** | The standard deviation of the data, with no priors effecting the result. | [optional] |
| **credible_interval** | [**CredibleIntervalRep**](CredibleIntervalRep.md) |  | [optional] |
| **p_best** | **Float** | The likelihood that this variation has the biggest effect on the primary metric. The variation with the highest probability is likely the best of the variations you&#39;re testing | [optional] |
| **relative_differences** | [**Array&lt;RelativeDifferenceRep&gt;**](RelativeDifferenceRep.md) | Estimates of the relative difference between this treatment&#39;s mean and the mean of each other treatment | [optional] |
| **units** | **Integer** | The number of units exposed to this treatment that have event values, including those that are configured to default to 0 | [optional] |
| **traffic** | **Integer** | The number of units exposed to this treatment. | [optional] |
| **event_values_sum** | **Float** | The sum of the event values for the units exposed to this treatment. | [optional] |
| **distribution** | [**Distribution**](Distribution.md) |  | [optional] |
| **correlation** | **Float** | The outcome-covariate correlation | [optional] |
| **standard_deviation_ratio** | **Float** | The ratio of the outcome SD to covariate SD | [optional] |
| **covariate_imbalance** | **Float** | The imbalance between the covariate mean for the arm and the covariate mean for the experiment | [optional] |
| **variance_reduction** | **Float** | The reduction in variance resulting from CUPED | [optional] |
| **model** | **String** | The model used to calculate the results. Parameters specific to this model will be defined under the field under the same name | [optional] |
| **bayesian_normal** | [**BayesianNormalStatsRep**](BayesianNormalStatsRep.md) |  | [optional] |
| **bayesian_beta** | [**BayesianBetaBinomialStatsRep**](BayesianBetaBinomialStatsRep.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::TreatmentResultRep.new(
  treatment_id: 92b8354e-360e-4d67-8f13-fa6a46ca8077,
  treatment_name: variation 25% off,
  mean: 0.5432525951557093,
  data_mean: 2.464845,
  data_std_dev: 1.0E-7,
  credible_interval: null,
  p_best: 0.6083,
  relative_differences: [{&quot;fromTreatmentId&quot;:&quot;92b8354e-360e-4d67-8f13-fa6a46ca8077&quot;,&quot;lower&quot;:-0.13708601934659803,&quot;upper&quot;:0.42655970355712425}],
  units: 76,
  traffic: 332,
  event_values_sum: 6234,
  distribution: null,
  correlation: null,
  standard_deviation_ratio: null,
  covariate_imbalance: null,
  variance_reduction: 0.1,
  model: bayesianNormal,
  bayesian_normal: null,
  bayesian_beta: null
)
```

