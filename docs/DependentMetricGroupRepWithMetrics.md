# LaunchDarklyApi::DependentMetricGroupRepWithMetrics

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | A unique key to reference the metric group |  |
| **name** | **String** | A human-friendly name for the metric group |  |
| **kind** | **String** | The type of the metric group |  |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources |  |
| **metrics** | [**Array&lt;MetricInGroupRep&gt;**](MetricInGroupRep.md) | The metrics in the metric group | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::DependentMetricGroupRepWithMetrics.new(
  key: metric-group-key-123abc,
  name: My metric group,
  kind: funnel,
  _links: {&quot;parent&quot;:{&quot;href&quot;:&quot;/api/v2/projects/my-project&quot;,&quot;type&quot;:&quot;application/json&quot;},&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/projects/my-project/metric-groups/my-metric-group&quot;,&quot;type&quot;:&quot;application/json&quot;}},
  metrics: null
)
```

