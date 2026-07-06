# LaunchDarklyApi::AnalysisConfigRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bayesian_threshold** | **String** | The threshold for the Probability to Beat Baseline (PBBL) and Probability to Be Best (PBB) comparisons for the Bayesian results analysis approach.  Value should be between 0-100 inclusive. | [optional] |
| **significance_threshold** | **String** | The significance threshold for the frequentist results analysis approach. Value should be between 0.0-1.0 inclusive. | [optional] |
| **test_direction** | **String** | The test sided direction for the frequentist results analysis approach. | [optional] |
| **multiple_comparison_correction_method** | **String** | The method for multiple comparison correction. | [optional] |
| **multiple_comparison_correction_scope** | **String** | The scope for multiple comparison correction. | [optional] |
| **sequential_testing_enabled** | **Boolean** | Whether sequential testing is enabled for Frequentist analysis | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AnalysisConfigRep.new(
  bayesian_threshold: null,
  significance_threshold: null,
  test_direction: null,
  multiple_comparison_correction_method: null,
  multiple_comparison_correction_scope: null,
  sequential_testing_enabled: null
)
```

