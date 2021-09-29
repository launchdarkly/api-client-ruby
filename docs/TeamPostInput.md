# LaunchDarklyApi::TeamPostInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **custom_role_keys** | **Array&lt;String&gt;** |  | [optional] |
| **description** | **String** |  | [optional] |
| **key** | **String** |  | [optional] |
| **member_ids** | **Array&lt;String&gt;** |  | [optional] |
| **name** | **String** |  | [optional] |
| **permission_grants** | [**Array&lt;PermissionGrantInput&gt;**](PermissionGrantInput.md) |  | [optional] |

## Example

```ruby
require 'launchdarkly_api'

instance = LaunchDarklyApi::TeamPostInput.new(
  custom_role_keys: null,
  description: null,
  key: null,
  member_ids: null,
  name: null,
  permission_grants: null
)
```

