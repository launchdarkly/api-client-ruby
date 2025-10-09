# LaunchDarklyApi::DependentMetricOrMetricGroupRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | A unique key to reference the metric or metric group |  |
| **_version_id** | **String** | The version ID of the metric or metric group |  |
| **name** | **String** | A human-friendly name for the metric or metric group |  |
| **kind** | **String** | If this is a metric, then it represents the kind of event the metric tracks. If this is a metric group, then it represents the group type |  |
| **is_numeric** | **Boolean** | For custom metrics, whether to track numeric changes in value against a baseline (&lt;code&gt;true&lt;/code&gt;) or to track a conversion when an end user takes an action (&lt;code&gt;false&lt;/code&gt;). | [optional] |
| **event_key** | **String** | The event key sent with the metric. Only relevant for custom metrics. | [optional] |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources |  |
| **is_group** | **Boolean** | Whether this is a metric group or a metric |  |
| **metrics** | [**Array&lt;MetricInGroupRep&gt;**](MetricInGroupRep.md) | An ordered list of the metrics in this metric group | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::DependentMetricOrMetricGroupRep.new(
  key: metric-key-123abc,
  _version_id: null,
  name: My metric,
  kind: custom,
  is_numeric: true,
  event_key: event-key-123abc,
  _links: {&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/metrics/my-project/my-metric&quot;,&quot;type&quot;:&quot;application/json&quot;}},
  is_group: null,
  metrics: null
)
```

