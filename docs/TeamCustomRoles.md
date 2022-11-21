# LaunchDarklyApi::TeamCustomRoles

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_count** | **Integer** | The number of custom roles assigned to this team | [optional] |
| **items** | [**Array&lt;TeamCustomRole&gt;**](TeamCustomRole.md) | An array of the custom roles that have been assigned to this team | [optional] |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::TeamCustomRoles.new(
  total_count: 1,
  items: null,
  _links: {&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/teams/example-team/roles?limit&#x3D;25&quot;,&quot;type&quot;:&quot;application/json&quot;}}
)
```

