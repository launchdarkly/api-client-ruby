# LaunchDarklyApi::TeamCustomRoles

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_count** | **Integer** |  | [optional] |
| **items** | [**Array&lt;TeamCustomRole&gt;**](TeamCustomRole.md) |  | [optional] |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::TeamCustomRoles.new(
  total_count: 1,
  items: null,
  _links: {&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/teams/example-team/roles?limit&#x3D;25&quot;,&quot;type&quot;:&quot;application/json&quot;}}
)
```

