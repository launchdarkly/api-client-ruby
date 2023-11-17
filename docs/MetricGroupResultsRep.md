# LaunchDarklyApi::MetricGroupResultsRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources |  |
| **metrics** | [**Array&lt;MetricInGroupResultsRep&gt;**](MetricInGroupResultsRep.md) | An ordered list of the metrics in this metric group, and each of their results |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::MetricGroupResultsRep.new(
  _links: null,
  metrics: null
)
```

