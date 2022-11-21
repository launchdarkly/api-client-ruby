# LaunchDarklyApi::UserRecord

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **last_ping** | **Time** | Timestamp of the last time this user was seen | [optional] |
| **environment_id** | **String** |  | [optional] |
| **owner_id** | **String** |  | [optional] |
| **user** | [**User**](User.md) |  | [optional] |
| **sort_value** | **Object** | If this record is returned as part of a list, the value used to sort the list. This is only included when the &lt;code&gt;sort&lt;/code&gt; query parameter is specified. It is a time, in Unix milliseconds, if the sort is by &lt;code&gt;lastSeen&lt;/code&gt;. It is a user key if the sort is by &lt;code&gt;userKey&lt;/code&gt;. | [optional] |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources | [optional] |
| **_access** | [**Access**](Access.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::UserRecord.new(
  last_ping: 2022-06-28T23:21:29.176609596Z,
  environment_id: null,
  owner_id: null,
  user: null,
  sort_value: example-user-key,
  _links: {&quot;parent&quot;:{&quot;href&quot;:&quot;/api/v2/users/my-project/my-environment&quot;,&quot;type&quot;:&quot;application/json&quot;},&quot;self&quot;:{&quot;href&quot;:&quot;/api/v2/users/my-project/my-environment/my-user&quot;,&quot;type&quot;:&quot;application/json&quot;},&quot;settings&quot;:{&quot;href&quot;:&quot;/api/v2/users/my-project/my-environment/my-user/flags&quot;,&quot;type&quot;:&quot;text/html&quot;},&quot;site&quot;:{&quot;href&quot;:&quot;/my-project/my-environment/users/my-user&quot;,&quot;type&quot;:&quot;text/html&quot;}},
  _access: null
)
```

