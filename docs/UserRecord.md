# LaunchDarklyApi::UserRecord

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **last_ping** | **Time** |  | [optional] |
| **environment_id** | **String** |  | [optional] |
| **owner_id** | **String** |  | [optional] |
| **user** | [**User**](User.md) |  | [optional] |
| **sort_value** | **Object** |  | [optional] |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) |  | [optional] |
| **_access** | [**Access**](Access.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::UserRecord.new(
  last_ping: null,
  environment_id: null,
  owner_id: null,
  user: null,
  sort_value: null,
  _links: {&quot;parent&quot;:{&quot;href&quot;:&quot;/api/v2/users/my-project/my-environment&quot;,&quot;type&quot;:&quot;application/json&quot;},&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/users/my-project/my-environment/my-user&quot;,&quot;type&quot;:&quot;application/json&quot;},&quot;settings&quot;:{&quot;href&quot;:&quot;/api/v2/users/my-project/my-environment/my-user/flags&quot;,&quot;type&quot;:&quot;text/html&quot;},&quot;site&quot;:{&quot;href&quot;:&quot;/my-project/my-environment/users/my-user&quot;,&quot;type&quot;:&quot;text/html&quot;}},
  _access: null
)
```

