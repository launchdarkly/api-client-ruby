# LaunchDarklyApi::ExperimentBayesianResultsRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources | [optional] |
| **treatment_results** | [**Array&lt;TreatmentResultRep&gt;**](TreatmentResultRep.md) | A list of the results for each treatment | [optional] |
| **metric_seen** | [**MetricSeen**](MetricSeen.md) |  | [optional] |
| **probability_of_mismatch** | **Float** | The probability of a Sample Ratio Mismatch | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ExperimentBayesianResultsRep.new(
  _links: null,
  treatment_results: null,
  metric_seen: null,
  probability_of_mismatch: null
)
```

