# LaunchDarklyApi::BayesianNormalStatsRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data_weight** | **Float** | The precision weight of the data mean | [optional] |
| **prior_mean** | **Float** | Mean of the prior distribution | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::BayesianNormalStatsRep.new(
  data_weight: null,
  prior_mean: null
)
```

