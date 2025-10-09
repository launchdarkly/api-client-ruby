# LaunchDarklyApi::MetricGroupPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | A unique key to reference the metric group | [optional] |
| **name** | **String** | A human-friendly name for the metric group |  |
| **kind** | **String** | The type of the metric group |  |
| **description** | **String** | Description of the metric group | [optional] |
| **maintainer_id** | **String** | The ID of the member who maintains this metric group |  |
| **tags** | **Array&lt;String&gt;** | Tags for the metric group |  |
| **metrics** | [**Array&lt;MetricInMetricGroupInput&gt;**](MetricInMetricGroupInput.md) | An ordered list of the metrics in this metric group |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::MetricGroupPost.new(
  key: metric-group-key-123abc,
  name: My metric group,
  kind: funnel,
  description: Description of the metric group,
  maintainer_id: 569fdeadbeef1644facecafe,
  tags: [&quot;ops&quot;],
  metrics: null
)
```

