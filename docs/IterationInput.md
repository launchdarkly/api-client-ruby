# LaunchDarklyApi::IterationInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hypothesis** | **String** | The expected outcome of this experiment |  |
| **can_reshuffle_traffic** | **Boolean** | Whether to allow the experiment to reassign traffic to different variations when you increase or decrease the traffic in your experiment audience (true) or keep all traffic assigned to its initial variation (false). Defaults to true. | [optional] |
| **metrics** | [**Array&lt;MetricInput&gt;**](MetricInput.md) |  |  |
| **treatments** | [**Array&lt;TreatmentInput&gt;**](TreatmentInput.md) |  |  |
| **flags** | [**Hash&lt;String, FlagInput&gt;**](FlagInput.md) |  |  |
| **randomization_unit** | **String** | The unit of randomization for this iteration. Defaults to user. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::IterationInput.new(
  hypothesis: Example hypothesis, the new button placement will increase conversion,
  can_reshuffle_traffic: true,
  metrics: null,
  treatments: null,
  flags: null,
  randomization_unit: user
)
```

