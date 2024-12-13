# LaunchDarklyApi::Teams

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;Team&gt;**](Team.md) | An array of teams |  |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources | [optional] |
| **total_count** | **Integer** | The number of teams | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::Teams.new(
  items: null,
  _links: {&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/teams?expand&#x3D;maintainers%2Cmembers%2Croles%2Cprojects&amp;limit&#x3D;20&quot;,&quot;type&quot;:&quot;application/json&quot;}},
  total_count: 1
)
```

