# LaunchDarklyApi::IterationRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** | The iteration ID | [optional] |
| **hypothesis** | **String** | The expected outcome of this experiment |  |
| **status** | **String** | The status of the iteration: &lt;code&gt;not_started&lt;/code&gt;, &lt;code&gt;running&lt;/code&gt;, &lt;code&gt;stopped&lt;/code&gt; |  |
| **created_at** | **Integer** |  |  |
| **started_at** | **Integer** |  | [optional] |
| **ended_at** | **Integer** |  | [optional] |
| **winning_treatment_id** | **String** | The ID of the treatment chosen when the experiment stopped | [optional] |
| **winning_reason** | **String** | The reason you stopped the experiment | [optional] |
| **can_reshuffle_traffic** | **Boolean** | Whether the experiment may reassign traffic to different variations when the experiment audience changes (true) or must keep all traffic assigned to its initial variation (false). | [optional] |
| **flags** | [**Hash&lt;String, FlagRep&gt;**](FlagRep.md) | Details on the flag used in this experiment | [optional] |
| **reallocation_frequency_millis** | **Integer** | The cadence (in milliseconds) to update the allocation. Only present for multi-armed bandits. | [optional] |
| **version** | **Integer** | The current version that the iteration is on | [optional] |
| **primary_metric** | [**DependentMetricOrMetricGroupRep**](DependentMetricOrMetricGroupRep.md) |  | [optional] |
| **primary_single_metric** | [**MetricV2Rep**](MetricV2Rep.md) |  | [optional] |
| **primary_funnel** | [**DependentMetricGroupRepWithMetrics**](DependentMetricGroupRepWithMetrics.md) |  | [optional] |
| **randomization_unit** | **String** | The unit of randomization for this iteration | [optional] |
| **attributes** | **Array&lt;String&gt;** | The available attribute filters for this iteration | [optional] |
| **treatments** | [**Array&lt;TreatmentRep&gt;**](TreatmentRep.md) | Details on the variations you are testing in the experiment | [optional] |
| **secondary_metrics** | [**Array&lt;MetricV2Rep&gt;**](MetricV2Rep.md) | Deprecated, use &lt;code&gt;metrics&lt;/code&gt; instead. Details on the secondary metrics for this experiment. | [optional] |
| **metrics** | [**Array&lt;DependentMetricOrMetricGroupRep&gt;**](DependentMetricOrMetricGroupRep.md) | Details on the metrics for this experiment | [optional] |
| **layer_snapshot** | [**LayerSnapshotRep**](LayerSnapshotRep.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::IterationRep.new(
  _id: 12ab3c45de678910fgh12345,
  hypothesis: The new button placement will increase conversion,
  status: running,
  created_at: null,
  started_at: null,
  ended_at: null,
  winning_treatment_id: 122c9f3e-da26-4321-ba68-e0fc02eced58,
  winning_reason: We ran this iteration for two weeks and the winning variation was clear,
  can_reshuffle_traffic: true,
  flags: null,
  reallocation_frequency_millis: 3600000,
  version: 0,
  primary_metric: null,
  primary_single_metric: null,
  primary_funnel: null,
  randomization_unit: user,
  attributes: null,
  treatments: null,
  secondary_metrics: null,
  metrics: null,
  layer_snapshot: null
)
```

