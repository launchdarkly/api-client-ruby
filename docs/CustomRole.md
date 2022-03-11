# LaunchDarklyApi::CustomRole

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** |  |  |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) |  |  |
| **_access** | [**Access**](Access.md) |  | [optional] |
| **description** | **String** |  | [optional] |
| **key** | **String** |  |  |
| **name** | **String** |  |  |
| **policy** | [**Array&lt;Statement&gt;**](Statement.md) |  |  |
| **base_permissions** | **String** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::CustomRole.new(
  _id: null,
  _links: null,
  _access: null,
  description: null,
  key: null,
  name: null,
  policy: null,
  base_permissions: null
)
```

