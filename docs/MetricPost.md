# LaunchDarklyApi::MetricPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | A unique key to reference the metric |  |
| **name** | **String** | A human-friendly name for the metric | [optional] |
| **description** | **String** | Description of the metric | [optional] |
| **kind** | **String** | The kind of event your metric will track |  |
| **selector** | **String** | One or more CSS selectors. Required for click metrics only. | [optional] |
| **urls** | [**Array&lt;UrlPost&gt;**](UrlPost.md) | One or more target URLs. Required for click and pageview metrics only. | [optional] |
| **is_active** | **Boolean** | Whether the metric is active. Set to &lt;code&gt;true&lt;/code&gt; to record click or pageview metrics. Not applicable for custom metrics. | [optional] |
| **is_numeric** | **Boolean** | Whether to track numeric changes in value against a baseline (&lt;code&gt;true&lt;/code&gt;) or to track a conversion when an end user takes an action (&lt;code&gt;false&lt;/code&gt;). Required for custom metrics only. | [optional] |
| **unit** | **String** | The unit of measure. Applicable for numeric custom metrics only. | [optional] |
| **event_key** | **String** | The event key to use in your code. Required for custom metrics only. | [optional] |
| **success_criteria** | **String** | Success criteria. Required for custom numeric metrics, optional for custom conversion metrics. | [optional] |
| **tags** | **Array&lt;String&gt;** | Tags for the metric | [optional] |
| **randomization_units** | **Array&lt;String&gt;** | An array of randomization units allowed for this metric | [optional] |
| **unit_aggregation_type** | **String** | The method in which multiple unit event values are aggregated | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::MetricPost.new(
  key: metric-key-123abc,
  name: Example metric,
  description: optional description,
  kind: custom,
  selector: .dropdown-toggle,
  urls: invalid example,
  is_active: true,
  is_numeric: false,
  unit: orders,
  event_key: sales generated,
  success_criteria: HigherThanBaseline,
  tags: [&quot;example-tag&quot;],
  randomization_units: [&quot;user&quot;],
  unit_aggregation_type: average
)
```

