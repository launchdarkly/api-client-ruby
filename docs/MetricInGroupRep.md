# LaunchDarklyApi::MetricInGroupRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | The metric key |  |
| **name** | **String** | The metric name |  |
| **kind** | **String** | The kind of event the metric tracks |  |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources |  |
| **name_in_group** | **String** | Name of the metric when used within the associated metric group. Can be different from the original name of the metric |  |
| **randomization_units** | **Array&lt;String&gt;** | The randomization units for the metric | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::MetricInGroupRep.new(
  key: metric-key-123abc,
  name: Example metric,
  kind: custom,
  _links: {&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/metrics/my-project/my-metric&quot;,&quot;type&quot;:&quot;application/json&quot;}},
  name_in_group: Step 1,
  randomization_units: [&quot;user&quot;]
)
```

