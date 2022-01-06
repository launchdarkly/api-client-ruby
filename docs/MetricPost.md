# LaunchDarklyApi::MetricPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** |  |  |
| **name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **kind** | **String** |  |  |
| **selector** | **String** | Required for click metrics | [optional] |
| **urls** | [**Array&lt;UrlPost&gt;**](UrlPost.md) | Required for click and pageview metrics | [optional] |
| **is_active** | **Boolean** |  | [optional] |
| **is_numeric** | **Boolean** |  | [optional] |
| **unit** | **String** |  | [optional] |
| **event_key** | **String** | Required for custom metrics | [optional] |
| **success_criteria** | **String** |  | [optional] |
| **tags** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::MetricPost.new(
  key: null,
  name: null,
  description: null,
  kind: null,
  selector: null,
  urls: null,
  is_active: null,
  is_numeric: null,
  unit: null,
  event_key: null,
  success_criteria: null,
  tags: null
)
```

