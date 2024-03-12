# LaunchDarklyApi::MetricInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | The metric key |  |
| **is_group** | **Boolean** | Whether this is a metric group (true) or a metric (false). Defaults to false | [optional] |
| **primary** | **Boolean** | Deprecated, use &lt;code&gt;primarySingleMetricKey&lt;/code&gt; and &lt;code&gt;primaryFunnelKey&lt;/code&gt;. Whether this is a primary metric (true) or a secondary metric (false) | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::MetricInput.new(
  key: metric-key-123abc,
  is_group: true,
  primary: true
)
```

