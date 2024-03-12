# LaunchDarklyApi::MetricInGroupRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | The metric key |  |
| **_version_id** | **String** | The version ID of the metric | [optional] |
| **name** | **String** | The metric name |  |
| **kind** | **String** | The kind of event the metric tracks |  |
| **is_numeric** | **Boolean** | For custom metrics, whether to track numeric changes in value against a baseline (&lt;code&gt;true&lt;/code&gt;) or to track a conversion when an end user takes an action (&lt;code&gt;false&lt;/code&gt;). | [optional] |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources |  |
| **name_in_group** | **String** | Name of the metric when used within the associated metric group. Can be different from the original name of the metric. Required if and only if the metric group is a &lt;code&gt;funnel&lt;/code&gt;. | [optional] |
| **randomization_units** | **Array&lt;String&gt;** | The randomization units for the metric | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::MetricInGroupRep.new(
  key: metric-key-123abc,
  _version_id: version-id-123abc,
  name: Example metric,
  kind: custom,
  is_numeric: true,
  _links: {&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/metrics/my-project/my-metric&quot;,&quot;type&quot;:&quot;application/json&quot;}},
  name_in_group: Step 1,
  randomization_units: [&quot;user&quot;]
)
```

