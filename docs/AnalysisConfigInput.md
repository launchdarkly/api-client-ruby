# LaunchDarklyApi::AnalysisConfigInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bayesian_threshold** | **String** | The threshold for the Probability to Beat Baseline (PBBL) and Probability to Be Best (PBB) comparisons for the Bayesian results analysis approach. | [optional] |
| **significance_threshold** | **String** | The significance threshold for the frequentist results analysis approach. | [optional] |
| **test_direction** | **String** | The test sided direction for the frequentist results analysis approach. | [optional] |
| **multiple_comparison_correction_method** | **String** | The method to use for multiple comparison correction. | [optional] |
| **multiple_comparison_correction_scope** | **String** | The scope of the multiple comparison correction. | [optional] |
| **sequential_testing_enabled** | **Boolean** | Whether sequential testing is enabled for Frequentist analysis | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::AnalysisConfigInput.new(
  bayesian_threshold: 10,
  significance_threshold: 5,
  test_direction: null,
  multiple_comparison_correction_method: bonferroni,
  multiple_comparison_correction_scope: variations,
  sequential_testing_enabled: null
)
```

