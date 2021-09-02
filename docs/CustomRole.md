# LaunchDarklyApi::CustomRole

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) |  |  |
| **name** | **String** |  |  |
| **key** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **_id** | **String** |  |  |
| **policy** | [**Array&lt;Statement&gt;**](Statement.md) |  |  |
| **_access** | [**AccessRep**](AccessRep.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::CustomRole.new(
  _links: null,
  name: null,
  key: null,
  description: null,
  _id: null,
  policy: null,
  _access: null
)
```

