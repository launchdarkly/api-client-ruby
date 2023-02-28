# LaunchDarklyApi::DesignExpandableProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **treatments** | [**Array&lt;TreatmentRep&gt;**](TreatmentRep.md) | Details on the variations you are testing in the experiment | [optional] |
| **secondary_metrics** | [**Array&lt;MetricV2Rep&gt;**](MetricV2Rep.md) | Details on the secondary metrics for this experiment | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::DesignExpandableProperties.new(
  treatments: null,
  secondary_metrics: null
)
```

