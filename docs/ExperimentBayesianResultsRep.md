# LaunchDarklyApi::ExperimentBayesianResultsRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) |  | [optional] |
| **treatment_results** | [**Array&lt;TreatmentResultRep&gt;**](TreatmentResultRep.md) |  | [optional] |
| **metric_seen** | [**MetricSeen**](MetricSeen.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ExperimentBayesianResultsRep.new(
  _links: null,
  treatment_results: null,
  metric_seen: null
)
```

