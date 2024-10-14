# LaunchDarklyApi::HoldoutsCollectionRep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;SimpleHoldoutRep&gt;**](SimpleHoldoutRep.md) |  | [optional] |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources | [optional] |
| **total_count** | **Integer** | The total number of holdouts in this project and environment. | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::HoldoutsCollectionRep.new(
  items: null,
  _links: {&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/my-project/environments/my-environment/holdouts?limit&#x3D;20&quot;,&quot;type&quot;:&quot;application/json&quot;}},
  total_count: null
)
```

