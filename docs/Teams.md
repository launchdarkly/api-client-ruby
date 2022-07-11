# LaunchDarklyApi::Teams

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;Team&gt;**](Team.md) |  | [optional] |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) |  | [optional] |
| **total_count** | **Integer** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::Teams.new(
  items: null,
  _links: {&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/teams?expand&#x3D;maintainers%2Cmembers%2Croles%2Cprojects&amp;limit&#x3D;20&quot;,&quot;type&quot;:&quot;application/json&quot;}},
  total_count: 1
)
```

