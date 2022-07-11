# LaunchDarklyApi::TeamMaintainers

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_count** | **Integer** |  | [optional] |
| **items** | [**Array&lt;MemberSummary&gt;**](MemberSummary.md) |  | [optional] |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::TeamMaintainers.new(
  total_count: 1,
  items: [{&quot;_id&quot;:&quot;569f183514f4432160000007&quot;,&quot;_links&quot;:{&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/members/569f183514f4432160000007&quot;,&quot;type&quot;:&quot;application/json&quot;}},&quot;email&quot;:&quot;foobar@example.com&quot;,&quot;firstName&quot;:&quot;Foo&quot;,&quot;lastName&quot;:&quot;Bar&quot;,&quot;role&quot;:&quot;reader&quot;}],
  _links: {&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/teams/example-team/maintainers?limit&#x3D;5&quot;,&quot;type&quot;:&quot;application/json&quot;}}
)
```

