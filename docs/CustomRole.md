# LaunchDarklyApi::CustomRole

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** | The ID of the custom role |  |
| **_links** | [**Hash&lt;String, Link&gt;**](Link.md) | The location and content type of related resources |  |
| **_access** | [**Access**](Access.md) |  | [optional] |
| **description** | **String** | The description of the custom role | [optional] |
| **key** | **String** | The key of the custom role |  |
| **name** | **String** | The name of the custom role |  |
| **policy** | [**Array&lt;Statement&gt;**](Statement.md) | An array of the policies that comprise this custom role |  |
| **base_permissions** | **String** |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::CustomRole.new(
  _id: 1234a56b7c89d012345e678f,
  _links: null,
  _access: null,
  description: This custom role is just an example,
  key: example-custom-role,
  name: Example custom role,
  policy: null,
  base_permissions: null
)
```

