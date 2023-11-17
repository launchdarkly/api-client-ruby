# LaunchDarklyApi::DesignRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hypothesis** | **String** | The expected outcome of this experiment |  |
| **can_reshuffle_traffic** | **Boolean** | Whether the experiment can reassign traffic to different variations when you increase or decrease the traffic in your experiment audience (true) or keep all traffic assigned to its initial variation (false). | [optional] |
| **flags** | [**Hash&lt;String, FlagRep&gt;**](FlagRep.md) | Details on the flag used in this experiment | [optional] |
| **primary_metric** | [**DependentMetricOrMetricGroupRep**](DependentMetricOrMetricGroupRep.md) |  | [optional] |
| **randomization_unit** | **String** | The unit of randomization for this iteration | [optional] |
| **treatments** | [**Array&lt;TreatmentRep&gt;**](TreatmentRep.md) | Details on the variations you are testing in the experiment | [optional] |
| **secondary_metrics** | [**Array&lt;MetricV2Rep&gt;**](MetricV2Rep.md) | Details on the secondary metrics for this experiment | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::DesignRep.new(
  hypothesis: The new button placement will increase conversion,
  can_reshuffle_traffic: true,
  flags: null,
  primary_metric: null,
  randomization_unit: user,
  treatments: null,
  secondary_metrics: null
)
```

