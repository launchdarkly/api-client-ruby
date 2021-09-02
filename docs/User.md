# LaunchDarklyApi::User

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **last_ping** | **Time** |  | [optional] |
| **environment_id** | **String** |  | [optional] |
| **owner_id** | **String** |  | [optional] |
| **user** | [**User**](User.md) |  | [optional] |
| **sort_value** | **Object** |  | [optional] |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) |  | [optional] |
| **_access** | [**AccessRep**](AccessRep.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::User.new(
  last_ping: null,
  environment_id: null,
  owner_id: null,
  user: null,
  sort_value: null,
  _links: null,
  _access: null
)
```

