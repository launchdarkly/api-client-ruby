# LaunchDarklyApi::IterationInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hypothesis** | **String** | The expected outcome of this experiment |  |
| **can_reshuffle_traffic** | **Boolean** | Whether to allow the experiment to reassign users to different variations (true) or keep users assigned to their initial variation (false). Defaults to true. | [optional] |
| **metrics** | [**Array&lt;MetricInput&gt;**](MetricInput.md) |  |  |
| **treatments** | [**Array&lt;TreatmentInput&gt;**](TreatmentInput.md) |  |  |
| **flags** | [**Hash&lt;String, FlagInput&gt;**](FlagInput.md) |  |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::IterationInput.new(
  hypothesis: Example hypothesis, the new button placement will increase conversion,
  can_reshuffle_traffic: true,
  metrics: null,
  treatments: null,
  flags: null
)
```

