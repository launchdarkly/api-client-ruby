# LaunchDarklyApi::SlicedResultsRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attribute** | **String** | An attribute that results are sliced by | [optional] |
| **attribute_value** | **String** | Attribute Value for &#39;attribute&#39; | [optional] |
| **treatment_results** | [**Array&lt;TreatmentResultRep&gt;**](TreatmentResultRep.md) | A list of the results for each treatment | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::SlicedResultsRep.new(
  attribute: country,
  attribute_value: Canada,
  treatment_results: null
)
```

