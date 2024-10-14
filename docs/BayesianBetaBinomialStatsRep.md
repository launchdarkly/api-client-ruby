# LaunchDarklyApi::BayesianBetaBinomialStatsRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **prior_alpha** | **Float** | Sum of converted pseudo-units for prior distribution | [optional] |
| **prior_beta** | **Float** | Sum of non-converted pseudo-units for prior distribution | [optional] |
| **prior_mean** | **Float** | Mean of the prior distribution | [optional] |
| **data_weight** | **Float** | The precision weight of the data mean | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::BayesianBetaBinomialStatsRep.new(
  prior_alpha: null,
  prior_beta: null,
  prior_mean: null,
  data_weight: null
)
```

