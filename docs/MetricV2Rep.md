# LaunchDarklyApi::MetricV2Rep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | The metric key |  |
| **name** | **String** | The metric name |  |
| **kind** | **String** | The kind of event the metric tracks |  |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::MetricV2Rep.new(
  key: example-metric,
  name: Example metric,
  kind: custom,
  _links: {&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/metrics/my-project/my-metric&quot;,&quot;type&quot;:&quot;application/json&quot;}}
)
```

