# LaunchDarklyApi::DependentMetricOrMetricGroupRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | A unique key to reference the metric or metric group |  |
| **name** | **String** | A human-friendly name for the metric or metric group |  |
| **kind** | **String** | If this is a metric, then it represents the kind of event the metric tracks. If this is a metric group, then it represents the group type |  |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources |  |
| **is_group** | **Boolean** | Whether this is a metric group or a metric |  |
| **metrics** | [**Array&lt;MetricInGroupRep&gt;**](MetricInGroupRep.md) | An ordered list of the metrics in this metric group | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::DependentMetricOrMetricGroupRep.new(
  key: metric-key-123abc,
  name: My metric,
  kind: custom,
  _links: {&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/metrics/my-project/my-metric&quot;,&quot;type&quot;:&quot;application/json&quot;}},
  is_group: null,
  metrics: null
)
```

