# LaunchDarklyApi::TeamMaintainers

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_count** | **Integer** | The number of maintainers of the team | [optional] |
| **items** | [**Array&lt;MemberSummary&gt;**](MemberSummary.md) | Details on the members that have been assigned as maintainers of the team | [optional] |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::TeamMaintainers.new(
  total_count: 1,
  items: [{&quot;_id&quot;:&quot;569f183514f4432160000007&quot;,&quot;_links&quot;:{&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/members/569f183514f4432160000007&quot;,&quot;type&quot;:&quot;application/json&quot;}},&quot;email&quot;:&quot;ariel@acme.com&quot;,&quot;firstName&quot;:&quot;Ariel&quot;,&quot;lastName&quot;:&quot;Flores&quot;,&quot;role&quot;:&quot;reader&quot;}],
  _links: {&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/teams/example-team/maintainers?limit&#x3D;20&quot;,&quot;type&quot;:&quot;application/json&quot;}}
)
```

