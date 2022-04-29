# LaunchDarklyApi::IterationExpandableProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **treatments** | [**Array&lt;TreatmentRep&gt;**](TreatmentRep.md) |  | [optional] |
| **secondary_metrics** | [**Array&lt;MetricV2Rep&gt;**](MetricV2Rep.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::IterationExpandableProperties.new(
  treatments: null,
  secondary_metrics: null
)
```

