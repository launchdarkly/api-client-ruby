# LaunchDarklyApi::IterationInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hypothesis** | **String** |  |  |
| **can_reshuffle_traffic** | **Boolean** |  | [optional] |
| **metrics** | [**Array&lt;MetricInput&gt;**](MetricInput.md) |  |  |
| **treatments** | [**Array&lt;TreatmentInput&gt;**](TreatmentInput.md) |  |  |
| **flags** | [**Hash&lt;String, FlagInput&gt;**](FlagInput.md) |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::IterationInput.new(
  hypothesis: null,
  can_reshuffle_traffic: null,
  metrics: null,
  treatments: null,
  flags: null
)
```

