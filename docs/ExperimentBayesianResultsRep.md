# LaunchDarklyApi::ExperimentBayesianResultsRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources | [optional] |
| **treatment_results** | [**Array&lt;TreatmentResultRep&gt;**](TreatmentResultRep.md) | Deprecated, use &lt;code&gt;results&lt;/code&gt; instead. Only populated when response does not contain results sliced by multiple attributes. | [optional] |
| **metric_seen** | [**MetricSeen**](MetricSeen.md) |  | [optional] |
| **probability_of_mismatch** | **Float** | The probability of a Sample Ratio Mismatch | [optional] |
| **results** | [**Array&lt;SlicedResultsRep&gt;**](SlicedResultsRep.md) | A list of attribute values and their corresponding treatment results | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::ExperimentBayesianResultsRep.new(
  _links: null,
  treatment_results: null,
  metric_seen: null,
  probability_of_mismatch: 0.9999999999999738,
  results: null
)
```

