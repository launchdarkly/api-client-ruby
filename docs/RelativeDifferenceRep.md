# LaunchDarklyApi::RelativeDifferenceRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **upper** | **Float** | An upper bound of the relative difference between the treatment and the &lt;code&gt;fromTreatmentId&lt;/code&gt; | [optional] |
| **lower** | **Float** | A lower bound of the relative difference between the treatment and the &lt;code&gt;fromTreatmentId&lt;/code&gt; | [optional] |
| **from_treatment_id** | **String** | The treatment ID of the treatment against which the relative difference is calculated | [optional] |
| **variance** | **Float** | Variance of the relative difference | [optional] |
| **variance_reduction** | **Float** | The reduction in variance resulting from CUPED | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::RelativeDifferenceRep.new(
  upper: 0.42655970355712425,
  lower: -0.13708601934659803,
  from_treatment_id: 92b8354e-360e-4d67-8f13-fa6a46ca8077,
  variance: 4.23,
  variance_reduction: 0.1
)
```

