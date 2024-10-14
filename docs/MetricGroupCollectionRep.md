# LaunchDarklyApi::MetricGroupCollectionRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;MetricGroupRep&gt;**](MetricGroupRep.md) | An array of metric groups |  |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources | [optional] |
| **total_count** | **Integer** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::MetricGroupCollectionRep.new(
  items: null,
  _links: {&quot;parent&quot;:{&quot;href&quot;:&quot;/api/v2/projects/my-project&quot;,&quot;type&quot;:&quot;application/json&quot;},&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/projects/my-project/metric-groups&quot;,&quot;type&quot;:&quot;application/json&quot;}},
  total_count: null
)
```

