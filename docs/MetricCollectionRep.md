# LaunchDarklyApi::MetricCollectionRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;MetricListingRep&gt;**](MetricListingRep.md) | An array of metrics | [optional] |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::MetricCollectionRep.new(
  items: null,
  _links: {&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/metrics/my-project?limit&#x3D;20&quot;,&quot;type&quot;:&quot;application/json&quot;}}
)
```

