# LaunchDarklyApi::MetricInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | The metric key |  |
| **is_group** | **Boolean** | Whether this is a metric group (true) or a metric (false). Defaults to false | [optional] |
| **primary** | **Boolean** | Whether this is a primary metric (true) or a secondary metric (false) |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::MetricInput.new(
  key: metric-key-123abc,
  is_group: true,
  primary: true
)
```

