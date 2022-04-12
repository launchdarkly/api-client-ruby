# LaunchDarklyApi::IterationRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** |  | [optional] |
| **hypothesis** | **String** |  |  |
| **status** | **String** |  |  |
| **started_at** | **Integer** |  | [optional] |
| **ended_at** | **Integer** |  | [optional] |
| **winning_treatment_id** | **String** |  | [optional] |
| **can_reshuffle_traffic** | **Boolean** |  | [optional] |
| **flags** | [**Hash&lt;String, FlagRep&gt;**](FlagRep.md) |  | [optional] |
| **primary_metric** | [**MetricRep**](MetricRep.md) |  | [optional] |
| **treatments** | [**Array&lt;TreatmentRep&gt;**](TreatmentRep.md) |  | [optional] |
| **secondary_metrics** | [**Array&lt;MetricRep&gt;**](MetricRep.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::IterationRep.new(
  _id: null,
  hypothesis: null,
  status: null,
  started_at: null,
  ended_at: null,
  winning_treatment_id: null,
  can_reshuffle_traffic: null,
  flags: null,
  primary_metric: null,
  treatments: null,
  secondary_metrics: null
)
```

