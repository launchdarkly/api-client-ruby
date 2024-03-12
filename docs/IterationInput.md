# LaunchDarklyApi::IterationInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hypothesis** | **String** | The expected outcome of this experiment |  |
| **can_reshuffle_traffic** | **Boolean** | Whether to allow the experiment to reassign traffic to different variations when you increase or decrease the traffic in your experiment audience (true) or keep all traffic assigned to its initial variation (false). Defaults to true. | [optional] |
| **metrics** | [**Array&lt;MetricInput&gt;**](MetricInput.md) |  |  |
| **primary_single_metric_key** | **String** | The key of the primary metric for this experiment. Either &lt;code&gt;primarySingleMetricKey&lt;/code&gt; or &lt;code&gt;primaryFunnelKey&lt;/code&gt; must be present. | [optional] |
| **primary_funnel_key** | **String** | The key of the primary funnel group for this experiment. Either &lt;code&gt;primarySingleMetricKey&lt;/code&gt; or &lt;code&gt;primaryFunnelKey&lt;/code&gt; must be present. | [optional] |
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
  primary_single_metric_key: metric-key-123abc,
  primary_funnel_key: metric-group-key-123abc,
  treatments: null,
  flags: null,
  randomization_unit: user
)
```

