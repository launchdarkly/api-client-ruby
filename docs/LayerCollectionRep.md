# LaunchDarklyApi::LayerCollectionRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;LayerRep&gt;**](LayerRep.md) | The layers in the project |  |
| **total_count** | **Integer** | The total number of layers in the project |  |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources |  |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::LayerCollectionRep.new(
  items: null,
  total_count: null,
  _links: {&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/projects/my-project/layers&quot;,&quot;type&quot;:&quot;application/json&quot;}}
)
```

