# LaunchDarklyApi::TreatmentRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** | The treatment ID. This is the variation ID from the flag. | [optional] |
| **name** | **String** | The treatment name. This is the variation name from the flag. |  |
| **allocation_percent** | **String** | The percentage of traffic allocated to this treatment during the iteration |  |
| **baseline** | **Boolean** | Whether this treatment is the baseline to compare other treatments against | [optional] |
| **parameters** | [**Array&lt;ParameterRep&gt;**](ParameterRep.md) | Details on the flag and variation used for this treatment | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::TreatmentRep.new(
  _id: 122c9f3e-da26-4321-ba68-e0fc02eced58,
  name: Treatment 1,
  allocation_percent: 10,
  baseline: true,
  parameters: null
)
```

