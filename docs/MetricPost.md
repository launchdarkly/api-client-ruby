# LaunchDarklyApi::MetricPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | A unique key to reference the metric |  |
| **name** | **String** | A human-friendly name for the metric | [optional] |
| **description** | **String** | Description of the metric | [optional] |
| **kind** | **String** | The kind of event your metric will track |  |
| **selector** | **String** | One or more CSS selectors. Required for click metrics. | [optional] |
| **urls** | [**Array&lt;UrlPost&gt;**](UrlPost.md) | One or more target URLs. Required for click and pageview metrics. | [optional] |
| **is_active** | **Boolean** | Whether the metric is active | [optional] |
| **is_numeric** | **Boolean** | Whether to track numeric changes in value against a baseline (&lt;code&gt;true&lt;/code&gt;) or to track a conversion when an end user takes an action (&lt;code&gt;false&lt;/code&gt;). Required for custom metrics. | [optional] |
| **unit** | **String** | The unit of measure. Only for numeric custom metrics. | [optional] |
| **event_key** | **String** | The event name to use in your code. Required for custom metrics. | [optional] |
| **success_criteria** | **String** | Success criteria. Required for numeric custom metrics. | [optional] |
| **tags** | **Array&lt;String&gt;** | Tags for the metric | [optional] |
| **randomization_units** | **Array&lt;String&gt;** | An array of randomization units allowed for this metric | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::MetricPost.new(
  key: example-metric,
  name: Example metric,
  description: optional description,
  kind: custom,
  selector: .dropdown-toggle,
  urls: invalid example,
  is_active: true,
  is_numeric: false,
  unit: orders,
  event_key: sales generated,
  success_criteria: Higher than baseline,
  tags: [&quot;example-tag&quot;],
  randomization_units: [&quot;user&quot;]
)
```

