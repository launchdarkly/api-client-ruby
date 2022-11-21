# LaunchDarklyApi::TreatmentInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The treatment name |  |
| **baseline** | **Boolean** | Whether this treatment is the baseline to compare other treatments against |  |
| **allocation_percent** | **String** | The percentage of traffic allocated to this treatment during the iteration |  |
| **parameters** | [**Array&lt;TreatmentParameterInput&gt;**](TreatmentParameterInput.md) | Details on the flag and variation to use for this treatment |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::TreatmentInput.new(
  name: Treatment 1,
  baseline: true,
  allocation_percent: 10,
  parameters: null
)
```

